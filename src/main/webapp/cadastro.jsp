<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="fam" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<title>Cadastro</title>
</head>
<body>
<form action="cadastrar">
c�digo:<input type="text" name="codigo"/><br/>
descri��o:<input type="text" name="descricao"/><br/>
quantidade:<input type="text" name="quantidade"/><br/>
pre�o:<input type="text" name="preco"/><br/>
data da compra:<fam:campoData id="dataCompra"/>
<input type="submit" value="enviar"/>
<br/>
<a href="/Projeto">voltar</a>
</form>
</body>
</html>