<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="logout-parcial.jsp"/>

<html>
<body>
	Usuario Logado: ${usuarioLogado.login }

	<c:if test="${empty empresa}">
           <br />
            N�o h� empresas para cadastrar..
        </c:if>

	<br />
	Cadastre uma nova empresa atrav�s deste 
	<a href="localhost:8080/gerenciador/formNovaEmpresa.jsp"><b>link</b></a>.


</body>
</html>