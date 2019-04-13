<?php
  function createUser($fname, $username, $password, $email) {
    include('connect.php');

    $create_user_query = 'INSERT INTO tbl_user(user_fname,user_name,user_pass,user_email)';
    $create_user_query .= 'VALUES(:fname,:username,:password,:email)';
    
    $create_user_set = $pdo->prepare($create_user_query);
    $create_user_set->execute(
        array(
            ':fname'=>$fname,
            ':username'=>$username,
            ':password'=>$password,
            ':email'=>$email
        )
     );

     if($create_user_set->rowCount()){
         redirect_to('index.php');
     }else{
            $message = 'Im not getting hired';
            return $message;
     }
  }

  function editUser($id, $fname, $username, $password, $email){
      include('connect.php');
      $update_user_query = 'UPDATE tbl_user SET user_fname=:fname, user_name=:username,';
      $update_user_query .=' user_pass=:password, user_email=:email';
      $update_user_query .=' WHERE user_id = :id';

      $update_user_set = $pdo->prepare($update_user_query);
      $update_user_set->execute(
          array(
              ':fname'=>$fname,
              ':username'=>$username,
              ':password'=>$password,
              ':email'=>$email,
              ':id'=>$id
          )
          );

          if($update_user_set->rowCount()){
              redirect_to('index.php');
          }else{
              $message = 'working';
              return $message;
          }
        }

        function deleteUser($id){
            echo 'You are going to delete user numero '.$id;
        }

        function deletetheUser($id) {
            include('connect.php');
        
            $delete_user_query = 'DELETE FROM tbl_user WHERE user_id = :id';
            $delete_user_set = $pdo->prepare($delete_user_query);
            $delete_user_set->execute(
                array(
                    ':id'=>$id
                )
             );
    
             if($delete_user_set){
                 redirect_to('../index.php');
             }else{
                    $message = 'Not deleting';
                    return $message;
             }
          }