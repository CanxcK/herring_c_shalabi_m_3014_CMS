<?php
    
    require_once('scripts/config.php');
	confirm_logged_in();
  
    // pull all users from db
    $user_tbl = 'tbl_user';

    //assign the result into an array #endregion
    $users = getAll($user_tbl);

   
?>

<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete User</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<h1>Time to destroy one of y'all</h1>
    <?php while($user = $users->fetch(PDO::FETCH_ASSOC)):?>
        <?php echo $user['user_fname'];?> <a href="scripts/caller.php?caller_id=delete&id=<?php echo $user['user_id'];?>">Delete</a>
        <br>
    <?php endwhile;?>   
  
</body>
</html>
