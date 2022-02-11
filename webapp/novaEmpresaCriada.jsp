
<%
//scriptlet
String nomeEmpresa = (String) request.getAttribute("empresa");
System.out.println(nomeEmpresa);
%>

<html>
<meta charset="utf-8" />
<body>
	Empresa
	<%=nomeEmpresa%>
	cadastrada com sucesso!
</body>
</html>