<?php
	require_once('config.php');

	if(isset($_GET['caller_id'])){
		$action = $_GET['caller_id'];

		switch($action){
			case 'logout':
				logged_out();
				break;

				case 'delete':
				$id = $_GET['id'];
				deletetheProduct($id);
				break;

				case 'update':
				$_SESSION['tempid'] = $_GET['id'];
				redirect_to('../admin_edittheproduct.php?tempid='.$_GET['id']);
				break;
		}
	}