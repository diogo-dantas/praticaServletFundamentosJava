<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<body>
	<c:if test="${empty empresa}">
            Não há empresas para cadastrar..
        </c:if>

	<br />
	<a href="localhost:8080/gerenciador/formNovaEmpresa.jsp"><b>Cadastre uma nova empresa!</b></a>


</body>
</html>