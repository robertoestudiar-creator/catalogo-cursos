<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:include page="/WEB-INF/views/partials/header.jsp"/>

<h1>Catálogo de cursos</h1>

<c:choose>
    <c:when test="${empty cursos}">
        <p>No hay cursos disponibles.</p>
    </c:when>
    <c:otherwise>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Curso</th>
                    <th>Profesor/a</th>
                    <th>Participantes</th>
                    <th>Plazas</th>
                    <th>Estado</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${cursos}" var="curso">
                    <tr>
                        <td>${curso.id}</td>
                        <td><c:out value="${curso.nombre}"/></td>
                        <td><c:out value="${curso.profesor}"/></td>
                        <td>${curso.participantes}</td>
                        <td>${curso.plazas}</td>
                        <td>
                            <c:choose>
                                <c:when test="${curso.participantes < curso.plazas}">
                                    Disponible
                                </c:when>
                                <c:otherwise>
                                    Completo
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:otherwise>
</c:choose>

<jsp:include page="/WEB-INF/views/partials/footer.jsp"/>
