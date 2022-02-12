<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List, br.com.git.diogo.gerenciador.servlet.Empresa"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<title>Empresas Cadastradas</title>
</head>
<body>
	Lista de empresas cadastradas:
	<br />

	<ul>
		<c:forEach items="${empresas}" var="empresa">

			<li>${empresa.nome}</li>

		</c:forEach>
	</ul>

</body>
</html>