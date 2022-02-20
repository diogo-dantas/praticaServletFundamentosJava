
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="br.com.git.diogo.gerenciador.modelo.Empresa" %>
<c:import url="logout-parcial.jsp"/>


<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<title>Empresas Cadastradas</title>
</head>
<body>

	Usuario Logado: ${usuarioLogado.login}
	

    <br>
    <br>
    <br>

	<i>Lista de empresas cadastradas: </i>
	<br />

	<ul>
		<c:forEach items="${empresas}" var="empresa">

			<li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" /> 
					
				<a href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">editar</a>
				<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">remove</a>
				
			</li>


		</c:forEach>

	</ul>
	<br />
	
	<a href="localhost:8080/gerenciador/entrada?acao=FormNovaEmpresa"><b>Cadastre uma nova empresa!</b></a>
	
</body>
</html>