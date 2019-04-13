<?php
    require_once('scripts/config.php');

    confirm_logged_in();
    $id = $_SESSION['user_id'];
    $tbl = 'tbl_user';
    $col = 'user_id';
//   var_dump($id);

    $found_user_set = getSingle($tbl,$col,$id);

    if(is_string($found_user_set)){
        $message = 'failed';
    }

    if(isset($_POST['submit'])){
        $fname = trim($_POST['fname']);
        $username = trim($_POST['username']);
        $password = trim($_POST['password']);
        $email = trim($_POST['email']);

        if(empty($username) || empty($password) || empty($email)){
            $message = 'please fill out fields';
        }else{
            $result = editUser($id, $fname, $username, $password, $email);
            $message = $result;
        }
    }
?>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit User</title>
</head>
<body>
	<h2>Edit User</h2>
    <?php if(!empty($message)):?>
	    <p><?php echo $message;?></p>
	<?php endif;?>
    <?php if($found_user = $found_user_set->fetch(PDO::FETCH_ASSOC)):?>
	<form action="admin_edituser.php" method="post">
	<label>First Name:</label>
	<input type="text" name="fname" id="firstname" value="<?php echo $found_user['user_fname'];?>"><br><br>

	<label>Username:</label>
	<input type="text" name="username" id="username" value="<?php echo $found_user['user_name'];?>"><br><br>

	<label>Password:</label>
	<input type="text" name="password" id="email" value="<?php echo $found_user['user_pass'];?>"><br><br>

	<label>Email:</label>
	<input type="email" name="email" value="<?php echo $found_user['user_email'];?>"><br><br>

	<button type="submit" name="submit">Edit User</button>
	</form>
<?php endif; ?>
</body>
</html>