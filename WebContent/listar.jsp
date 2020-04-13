<%@page import="org.xandao.Lista"%>
<%@page import="org.xandao.Produto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%! Lista lista = new Lista(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Lista De Produtos Cadastrados</title>
</head>
<style type="text/css">
	@font-face {
	  font-family: pixelBrabo;
	  src: url(pixelsix00.ttf);
	}
</style>
<body style="background: #000000e6;">
	<nav class="navbar navbar-dark bg-dark">
	  <a class="navbar-brand" href="index.jsp" style = "font-family:pixelBrabo">
		<img src="./voltar.png" style="width: 20%;margin-left: 20px;">
	  </a>
	</nav>
	<div style = "text-align:center;">
		<h1 style="font-family:pixelBrabo;color: rebeccapurple;text-shadow: -5px 5px 10px black;margin-top: 25px;">Produtos</h1>
	</div>
	<div style = "text-align: -webkit-center;margin-top: 60px;">
		<table class="table table-dark" style="font-family: pixelBrabo;border: solid;border-color: rebeccapurple;box-shadow: -6px 6px 20px black;width: 20%;">
			 <thead>
			    <tr>
			   	  <th scope="col">Nome</th>
			      <th scope="col">Marca</th>
			      <th scope="col">Valor de Venda</th>
			      <th scope="col">Valor de Custo</th>
			      <th scope="col">Quantidade</th>
			    </tr>
			  </thead>
			  <tbody>
			  <% for (Produto p: lista.listar()){ %>
			  	<tr>
			  		<td><%= p.getDescricao() %></td>
					<td><%= p.getMarca() %></td>
					<td><%= p.getQuantidade() %></td>
					<td><%= p.getVenda() %></td>
					<td><%= p.getCusto() %></td>
			  	</tr>
			  </tbody>
			  <% } %>
		</table>	
	</div>
	<script src="./sweetalert2.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>