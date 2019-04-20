<?php
require_once 'scripts/config.php';
confirm_logged_in();

$id= $_SESSION['tempid'];
$tbl = 'tbl_apparel';
$col = 'apparel_id';

$getApparelSet = getSingle($tbl,$col,$id);

if(is_string($getApparelSet)){
    $message = "Failed";
}

if (isset($_POST['submit'])) {
    $cover = $_POST['cover'];
    $name = $_POST['name'];
    $price = $_POST['price'];
    $description = $_POST['description'];
    $result = updateProduct($id, $cover, $name, $price, $description);
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
    <?php if($found_user = $getApparelSet->fetch(PDO::FETCH_ASSOC)):?>
<form action="admin_edittheproduct.php" method="post" enctype="multipart/form-data">
    <label for="cover">Apparel Image:</label>
    <input type="text" name="cover" id="cover" value="<?php echo $found_user['apparel_cover'];?>"><br><br>

    <label for="cover">Apparel Name:</label>
    <input type="text" name="name" id="name" value="<?php echo $found_user['apparel_name'];?>"><br><br>

    <label for="cover">Apparel Price:</label>
    <input type="text" name="price" id="price" value="<?php echo $found_user['apparel_price'];?>"><br><br>

    <label for="cover">Apparel Description</label>
    <textarea name="description" id="description"><?php echo $found_user['apparel_description'];?></textarea><br><br>


    <button type="submit" name="submit">update Product</button>
    </form>

<?php endif; ?>
</body>
</html>