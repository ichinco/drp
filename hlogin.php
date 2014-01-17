<?php
	$link = mysql_connect('evilwire.fatcowmysql.com', 'evilwire_app', '$u13pol0nium'); 
	if (!$link) { 
	    die('Could not connect: ' . mysql_error());
	}
	
	echo '<!-- Connected successfully -->';
	
	$db = mysql_select_db(evilwire_IC_20100113_123836);
	
	$id = $_POST["id"];
	$password = $_POST["password"];
	
	$passwordHash = sha1($password);
	
	$sql = //"SELECT * FROM drp_users";
	
	sprintf("SELECT username FROM drp_users WHERE username = '%s' AND password = '%s'",
		mysql_real_escape_string($id),
		mysql_real_escape_string($passwordHash));
	
	$result = mysql_query($sql); //, array($id, $passwordHash));
	
	echo "here!!!";
	
	$resultPresent = true;
	
	while ($row = mysql_fetch_assoc($result)) {
	    /* Log user in */
	
	    echo 'yo mama';
	    printf('Welcome back %s!', $_POST['username']);
	    $resultPresent = false;
	}	
	
	if ($resultPresent){
	    /* Access denied */
	    echo 'Sorry, your username or password was incorrect!';	
	}
	
?>