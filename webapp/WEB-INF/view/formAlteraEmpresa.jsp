<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:url value="/entrada?acao=AlteraEmpresa" var="linkServletAlteraEmpresa" />
<c:import url="logout-parcial.jsp"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	Usuario Logado: ${usuarioLogado.login }


	<form action="${linkServletAlteraEmpresa}" method="post">

		Nome: <input type="text" name="nome" value="${empresa.nome}" />
		Data Abertura: <input type="text" name="data"
			value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>" />
			 <input type="hidden" name="id" value="${empresa.id }">
			 <input type="hidden" name="acao" value="AlteraEmpresa">
		<input type="submit" />

	</form>


</body>
</html>