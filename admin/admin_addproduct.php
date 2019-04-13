<?php
require_once 'scripts/config.php';
confirm_logged_in();

//TODO: pull all genre_id from tbl_genre
$gen_tbl = 'tbl_genre';
//save the results into a array $movie_categories
$product_categories = getAll($gen_tbl);

if (isset($_POST['submit'])) {
    //var_dump($_POST);
    //var_dump($_FILES['cover']);
    $cover = $_FILES['cover'];
    $name = $_POST['name'];
    $price = $_POST['price'];
    $description = $_POST['description'];
    $genre = $_POST['genList'];
    $result = addMovie($cover, $name, $price, $description, $genre);
    $message = $result;

}

?>



<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Add Product</title>
</head>
<body>
    <?php if(!empty($message)):?>
<p><?php echo $message;?></p>
<?php endif;?>
<form action="admin_addproduct.php" method="post" enctype="multipart/form-data">
    <label for="cover">Apparel Image:</label>
    <input type="file" name="cover" id="cover" value=""><br><br>

    <label for="cover">Apparel Name:</label>
    <input type="text" name="name" id="name" value=""><br><br>

    <label for="cover">Apparel Price:</label>
    <input type="text" name="price" id="price" value=""><br><br>

    <label for="cover">Apparel Description</label>
    <input type="text" name="description" id="description" value=""><br><br>

    <select name="genList">
        <option>Please select a genre</option>
        <?php while ($product_category = $product_categories->fetch(PDO::FETCH_ASSOC)): ?>
            <option value="<?php echo $product_category['genre_id']; ?>">
            <?php echo $product_category['genre_name']; ?>
        </option>
        <?php endwhile;?>
    </select><br><br>

    <button type="submit" name="submit">Add Product</button>
</body>
</html>