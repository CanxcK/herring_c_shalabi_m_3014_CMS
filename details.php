<?php require_once('admin/scripts/config.php');
if(isset($_GET['id'])){
	$tbl = 'tbl_apparel';
	$col = 'apparel_id';
	$id = $_GET['id'];
	$results = getSingle($tbl,$col,$id);	
}else{
	echo 'Missing Movie ID';
	exit;
}
?>

<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Movie Details</title>
</head>
<body>
	<?php include('templates/header.php');?>

	<?php while($row = $results->fetch(PDO::FETCH_ASSOC)):?>
		<div>
			<h2><?php echo $row['apparel_name'];?></h2>
			<p><?php echo $row['apparel_description'];?></p>
			<p>Price: <?php echo $row['apparel_price'];?></p>
			<img src="images/<?php echo $row['apparel_cover'];?>" alt="">
		</div>
	<?php endwhile;?>
	<?php include('templates/footer.php');?>
</body>
</html>