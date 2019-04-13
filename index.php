<?php require_once('admin/scripts/config.php');
if(isset($_GET['filter'])){
	$tbl = 'tbl_apparel';
	$tbl_2 = 'tbl_genre';
	$tbl_3 = 'tbl_apparel_genre';
	$col = 'apparel_id';
	$col_2 = 'genre_id';
	$col_3 = 'genre_name';
	$filter = $_GET['filter'];
	$results = filterResults($tbl,$tbl_2,$tbl_3,$tbl_1,$col,$col_2,$col_3,$filter);
}else{
	$results = getAll('tbl_apparel');
}
?>

<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Sports Chek</title>
</head>
<body>
	<?php include('templates/header.php');?>

	<?php while($row = $results->fetch(PDO::FETCH_ASSOC)):?>
		<div>
			<h2><?php echo $row['apparel_name'];?></h2>
			<p>Price: $<?php echo $row['apparel_price'];?></p>
			<img src="images/<?php echo $row['apparel_cover'];?>" alt="">
			<br>
			<button><a href="details.php?id=<?php echo $row['apparel_id'];?>">View Product</a></button>
		</div>
	<?php endwhile;?>
	<?php include('templates/footer.php');?>
</body>
</html>