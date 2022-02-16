<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:url value="/entrada?acao=CriaEmpresa" var="linkServletNovaEmpresa" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Controle de Empresas</title>
</head>
<body>

	<form action="${linkServletNovaEmpresa}" method="post">
		Nome: <input type="text" name="nome" /> 
		Data Abertura: <input type="text" name="data" /> <input type="submit" />
		<input type="hidden" name="acao" value="CriaEmpresa"/>
	</form>

</body>
</html>