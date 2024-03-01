<?php

$username = "root";
$password = "";
$host = "localhost";

$is_connect = mysqli_connect($host, $username, $password); //mysql -u root -p -h localhost

if($is_connect) {
    mysqli_select_db($is_connect, "izin_db"); //use izin_db di mysql
    // echo "yeyeyye!!";
}else{
    echo "yahahah ga jalan";
}
