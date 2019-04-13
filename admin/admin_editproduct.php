<?php
    
    require_once('scripts/config.php');
	confirm_logged_in();
  
    // pull all users from db
    $user_tbl = 'tbl_apparel';

    //assign the result into an array #endregion
    $users = getAll($user_tbl);

   
?>

<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit User</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<h1>Time to edit one of y'all</h1>
    <?php while($user = $users->fetch(PDO::FETCH_ASSOC)):?>
        <?php echo $user['apparel_name'];?> <a href="scripts/caller.php?caller_id=update&id=<?php echo $user['apparel_id'];?>">Edit</a>
        <br>
    <?php endwhile;?>   
  
</body>
</html>