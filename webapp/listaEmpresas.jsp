<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page
	import="java.util.List, br.com.git.diogo.gerenciador.servlet.Empresa"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<title>Empresas Cadastradas</title>
</head>
<body>

	<br /> Lista de empresas cadastradas:
	<br />

	<ul>
		<c:forEach items="${empresas}" var="empresa">

			<li>${empresa.nome}- <fmt:formatDate
					value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" />
					<a href="/gerenciador/mostraEmpresa?id=${empresa.id}">editar</a>
					<a href="/gerenciador/removeEmpresa?id=${empresa.id}">remove</a>
			</li>
			

		</c:forEach>
	</ul>

</body>
</html>