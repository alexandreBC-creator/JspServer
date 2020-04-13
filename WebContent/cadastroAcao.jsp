<%@page import="org.xandao.Lista"%>
<%@page import="org.xandao.Produto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%! Lista vetor = new Lista(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	 Produto p = new Produto();
	 p.setDescricao(request.getParameter("nome"));
	 p.setMarca(request.getParameter("marca"));
	 p.setCusto(Double.parseDouble(request.getParameter("vCusto")));
	 p.setVenda(Double.parseDouble(request.getParameter("vVenda")));
	 p.setQuantidade(Integer.parseInt(request.getParameter("qntd")));	
	 vetor.inserir(p);
	 response.sendRedirect("./index.jsp");
	 %>
</body>
</html>