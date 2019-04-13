<?php
    require_once('scripts/config.php');
    confirm_logged_in();


    if(isset($_POST['submit'])){
        $fname = trim($_POST['fname']);
        $username = trim($_POST['username']);
        $password = trim($_POST['password']);
        $email = trim($_POST['email']);
        
        //Validation
        if(empty($username) || empty($password) || empty($email)){
            $message = 'Please fill in the required fields';
        }else{
            $result = createUser($fname, $username, $password, $email);

            $message = $result;
            
            if($result) {
            $to = $email;
            $subject = "Sign up username & password";
            $message = "<h1>This is your $username and $password. The link to login is http://localhost:8888/herring_c_3014_r1/admin/admin_login.php</h1>";
            $headers = "From: connorcanuck96@gmail.com \r\n";
            $headers .= "MIME-Version: 1.0" . "\r\n";
            $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

            mail($to,$subject,$message,$headers);

            //header('location:index.php');
            
        }
    }

    }
?>


<!<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Create User</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <?php if(!empty($message)):?>
	    <p><?php echo $message;?></p>
	<?php endif;?>
    <h2>Create User</h2>
    <form action="admin_createuser.php" method="POST">
        <label for="first-name">First name</label>
        <input type="text" id="first-name" name="fname" value=""><br><br>
        
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" value=""><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value=""><br><br>

        <label for="password">Password:</label>
        <input type="text" id="password" name="password" value=
        <?php
        
        $Generator = "ABCDEFGHIJKLMOPQRSTUVWXYZ1234567890";
        echo substr(str_shuffle($Generator),0,8);

        ?>>
        <button>Generate other password</button><br><br>

        

        <button type="submit" name="submit">Create User</button>
    </form>


</body>
</html>