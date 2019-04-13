<?php
	require_once('scripts/config.php');
	confirm_logged_in();

?>



<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Spots Chek Admin Page</title>
</head>
<body>
	<h1>Sports Chek Admin Page</h1>
	<h2>Welcome <?php echo $_SESSION['user_name'];?></h2>
	<h1> 
	Hello there, 
	<?php 
	date_default_timezone_set('America/Toronto');
	$hour = date('G');
	
	if ($hour >= 5 && $hour <= 11 ) {
	echo "I hope you're having a good start to the day";

	} else if ($hour >= 12 && $hour <= 18 ) {
		echo "have a great afternoon!";
	
	} else if ($hour >= 19 || $hour <= 4 ) {
	echo "hope you're having a good night!";
}
?>




</h1>

	<nav>
		<ul>
			<li><a href="admin_createuser.php">Create User</a></li>
			<li><a href="admin_edituser.php">Edit User</a></li>
			<li><a href="admin_deleteuser.php">Delete User</a></li>
			<li><a href="scripts/caller.php?caller_id=logout">Sign Out</a></li>
		</ul>
	</nav>
	
	<p>Your last login date was... <?php echo $_SESSION['last_login']; ?>

	<li><a href="admin_addproduct.php">Add Product</a></li>
	<li><a href="admin_editproduct.php">Edit Product</a></li>
	<li><a href="admin_deleteproduct.php">Delete Product</a></li>

</body>
</html>