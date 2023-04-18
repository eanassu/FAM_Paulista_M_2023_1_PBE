<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista com taglib</title>
</head>
<body>
<jsp:useBean id="dao" class="br.vemprafam.dao.DaoProduto"/>
<table border="1">
<tr>
	<th>código</th>
	<th>descrição</th>
	<th>quantidade</th>
	<th>preço</th>
	<th>data da compra</th>
</tr>
<c:forEach var="produto" items="${dao.lista}">
<tr>
	<td>${produto.codigo}</td>
	<td>${produto.descricao}</td>
	<td>${produto.quantidade}</td>
	<td><fmt:formatNumber value="${produto.preco}" 
	     type="currency"/></td>
	<td><fmt:formatDate value="${produto.dataCompra}"
		pattern="dd/MM/yyyy"/></td>
</tr>

</c:forEach>
</table>
<a href="/Projeto">voltar</a>
</body>
</html>