<?php

function addMovie($cover, $name, $price, $description, $genre)
{
//plan things out
    try {
        //Build the db connections
        include 'connect.php';

        //Validate File
        $file_type = pathinfo($cover['name'], PATHINFO_EXTENSION);
        $accepted_types = array('gif', 'jpg', 'jpe', 'jpeg', 'png');
        if (!in_array($file_type, $accepted_types)) {
            throw new Exception('Wrong file type!');
        }

        //Movie file around
        $target_path = '../images/' . $cover['name'];
        if (!move_uploaded_file($cover['tmp_name'], $target_path)) {
            throw new Exception('Failed to move uploaded file, check perms!');
        }

        // $th_copy = '../images/TH_' . $cover['name'];
        // if (!copy($target_path, $th_copy)) {
        //     throw new Exception('Failed to move copy file');
        // }

        //Adding entries to db (both tbl_movie and tbl_mov_genre)
        $insert_movie_query = 'INSERT INTO tbl_apparel(apparel_cover,apparel_name,apparel_price, apparel_description)';
        $insert_movie_query .= ' VALUES(:apparel_cover, :apparel_name, :apparel_price, :apparel_description)';

        $insert_movie = $pdo->prepare($insert_movie_query);
        $insert_result = $insert_movie->execute(
            array(
                ':apparel_cover' => $cover['name'],
                ':apparel_name' => $name,
                ':apparel_price' => $price,
                ':apparel_description' => $description
            )
        );
// var_dump($insert_movie->debugDumpParams());
        if (!$insert_result) {
            throw new Exception('Failed to insert the new product');
        }
        $last_id = $pdo->lastInsertId();
        // var_dump($last_id);

        $insert_genre_query = 'INSERT INTO tbl_apparel_genre(apparel_id, genre_id) VALUES(:apparel_id, :genre_id)';
        $insert_genre = $pdo->prepare($insert_genre_query);
        $insert_genre->execute(
            array(
                ':apparel_id' => $last_id,
                ':genre_id' => $genre,
            )
        );

        if (!$insert_genre->rowCount()) {
            // var_dump($insert_genre->debugDumpParams());
            // echo 'testes';exit;
            throw new Exception('Failed to set Genre!');
        }

        //If all works redirect to index.php
        redirect_to('index.php');
    } catch (Exception $e) {
        $error = $e->getMessage();
        return $error;
    }
    //var_dump($cover);
    //var_dump($genre);
}

function updateProduct($id, $cover, $name, $price, $description){
    include('connect.php');
      $update_apparel_query = 'UPDATE tbl_apparel SET apparel_cover=:cover, apparel_name=:apparelname,';
      $update_apparel_query .=' apparel_price=:price, apparel_description=:desc';
      $update_apparel_query .=' WHERE apparel_id = :id';

      $update_apparel_set = $pdo->prepare($update_apparel_query);
      $update_apparel_set->execute(
          array(
              ':cover'=>$cover,
              ':apparelname'=>$name,
              ':price'=>$price,
              ':desc'=>$description,
              ':id'=>$id
          )
          );
          redirect_to('index.php');
          
}

function deletetheProduct($id) {
    include('connect.php');

    $delete_product_query = 'DELETE FROM tbl_apparel WHERE apparel_id = :id';
    $delete_product_set = $pdo->prepare($delete_product_query);
    $delete_product_set->execute(
        array(
            ':id'=>$id
        )
     );

     if($delete_product_set){
         redirect_to('../index.php');
     }else{
            $message = 'Not deleting';
            return $message;
     }
  }