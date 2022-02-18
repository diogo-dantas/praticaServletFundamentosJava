<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<body>
	<c:if test="${empty empresa}">
           <br />
            Não há empresas para cadastrar..
        </c:if>

	<br />
	Cadastre uma nova empresa através deste 
	<a href="localhost:8080/gerenciador/formNovaEmpresa.jsp"><b>link</b></a>.


</body>
</html>