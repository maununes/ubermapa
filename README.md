# Uber Mapa

Este é um projeto de aplicação web (responsiva em dispositivos móveis) que, a partir dos dados de
localização do usuário, apresenta no google maps a relação de universidades próximas ao usuário (raio de x km).
Ao clicar em uma das universidades apresentadas, a aplicação armazena as informações colhidas
(lat/long, raio, device, browser e universidade) em um banco de dados

## Tecnologias Utilizadas

-HTML5
-Javascript
-Jquery
-Api do Google Maps
-Mysql
-PHP

## Instruções para Deploy

Para configuração da aplicação siga os passos:
1) Deve-se importar o script no phpmyadmin para criação das tabelas. 
Caminho: mysql/ubermapa.sql
2) Configurar a conexão do mysql preenchendo o host, usuário de banco, senha e nome do banco.
Caminho: webservice/conexao.php
3) Todo o projeto deve estar num servidor web, de preferência Apache.
4) Acessar o endereço web do projeto