<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:include page="/WEB-INF/views/partials/header.jsp"/>

<h1>Bienvenido</h1>
<p>Consulta los cursos que ofrecemos este año.</p>
<p><a href="${pageContext.request.contextPath}/catalogo">Ver catálogo de cursos</a></p>

<jsp:include page="/WEB-INF/views/partials/footer.jsp"/>
