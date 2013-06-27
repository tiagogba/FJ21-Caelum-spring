<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="calendar" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/jquery.css" rel="stylesheet">
	<script src="js/jquery.js"></script>
	<script src="js/jquery-ui.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Altera tarefa  - ${tarefa.id}</h3>
	<form action="alteraTarefa" method="post">
	<input type="hidden" name="id" value="${tarefa.id}"/>
	Descricao:<br />
	<textarea name="descricao" cols="100" rows="5">
	${tarefa.descricao}
	</textarea>
	<br />
	
	Finalizado? <input type="checkbox" name="finalizado" value="true" ${tarefa.finalizado? 'checked' : '' }/> <br />
	Data de finalizacao: <br />
	<calendar:campoData id="dataFinalizacao"/>
	<br />
	<input type="submit" value="Alterar"/>
	</form>
	
</body>
</html>