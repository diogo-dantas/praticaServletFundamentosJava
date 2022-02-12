<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<body>
	<c:if test="${not empty empresa}">
            Empresa ${ empresa } cadastrada com sucesso!
        </c:if>

	<c:if test="${empty empresa}">
            Nenhuma empresa cadastrada!
            
        </c:if>
	<br />
	<a href="localhost:8080/gerenciador/formNovaEmpresa.jsp"><b>Cadastre uma nova empresa!</b></a>


</body>
</html>