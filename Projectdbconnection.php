<?php

$host="localhost";
$user="root";
$password="";
$dbname="phpproject";
$link=@mysqli_connect($host,$user,$password,$dbname);

if(mysqli_connect_errno()){
    echo "connection failed: ".mysqli_connect_error();
    exit();
}

?>