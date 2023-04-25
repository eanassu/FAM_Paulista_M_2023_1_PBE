<%@page import="java.text.SimpleDateFormat"%>
<%@page import="br.vemprafam.pojo.Produto"%>
<%@page import="br.vemprafam.dao.DaoProduto"%>
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
<title>Produto</title>
</head>
<body>
<%
int codigo=Integer.parseInt(request.getParameter("codigo"));
DaoProduto dao = new DaoProduto();
Produto p = dao.buscarPeloCodigo(codigo);
SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
%>
<form action="alterar">
c�digo:<input type="text" name="codigo" value="<%=p.getCodigo()%>"/><br/>
descri��o:<input type="text" name="descricao" value="<%=p.getDescricao()%>"/><br/>
quantidade:<input type="text" name="quantidade" value="<%=p.getQuantidade()%>"/><br/>
pre�o:<input type="text" name="preco" value="<%=p.getPreco()%>"/><br/>
data da compra:<fam:campoData id="dataCompra" 
  value="<%=dateFormat.format(p.getDataCompra())%>"/><br/>
<input type="submit" value="enviar"/>
<br/>
</form>
<a href="/Projeto">voltar</a>
</body>
</html>