<?php
include "conexao.php";

$universidadeid = $_GET['id'];
$latlng = $_GET['latlng'];
$useragent = $_GET['useragent'];
$raio = $_GET['raio'];


$sql="INSERT INTO requisicao (universidadeid,useragent,raio,latlng)values($universidadeid,'$useragent',$raio,'$latlng')";
echo $sql;
$conn->query($sql);
echo $conn->insert_id;

$conn->close();

?>