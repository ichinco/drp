<?php
	$link = mysql_connect('evilwire.fatcowmysql.com', 'evilwire_app', '$u13pol0nium'); 
	if (!$link) { 
	    die('Could not connect: ' . mysql_error());
	}
	
	echo '<!-- Connected successfully -->';
	
	mysql_select_db(evilwire_IC_20100113_123836);
	
	$id = $_POST["id"];
	$password = $_POST["password"];
	
	$passwordHash = sha1($password);
	
	$sql = sprintf("INSERT INTO drp_users (username,password) VALUES ('%s','%s')", mysql_real_escape_string($id), mysql_real_escape_string($passwordHash));
	$result = mysql_query($sql);
	
?>