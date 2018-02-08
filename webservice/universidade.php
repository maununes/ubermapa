<?php
header("Content-Type: application/json;charset=utf-8");
include "conexao.php";

//
$sql = "SELECT * FROM universidade";

$result = $conn->query($sql);
$listaUniversidade = [];


if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
		array_push($listaUniversidade, [
										'universidadeid'=>$row['universidadeid']
										,'nome'=>$row['nome']
										,'descricao'=>$row['descricao']
										,'lat'=>$row['lat']
										,'lng'=>$row['lng']
										]);
    }
}
$conn->close();

echo json_encode($listaUniversidade)
?>