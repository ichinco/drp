 <?php 
$link = mysql_connect('evilwire.fatcowmysql.com', 'evilwire_app', '$u13pol0nium'); 
if (!$link) { 
    die('Could not connect: ' . mysql_error()); 
}
echo 'Connected successfully'; 
mysql_select_db(evilwire_IC_20100113_123836); 

echo 'beep';
 ?> 