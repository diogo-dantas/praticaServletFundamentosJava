<%@ page
	import="java.util.List, br.com.git.diogo.gerenciador.servlet.Empresa"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8" />
<title>Insert title here</title>
</head>
<body>
	Lista de empresas cadastradas:
	<br />

	<ul>
		<%
		List<Empresa> lista = (List<Empresa>) request.getAttribute("empresas");
		for (Empresa empresa : lista) {
		%>
		<li><%=empresa.getNome()%></li>
		<%
		}
		%>
	</ul>

</body>
</html>