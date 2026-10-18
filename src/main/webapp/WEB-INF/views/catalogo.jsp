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
                    <th>Plazas libres</th>
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
                        <td>${curso.plazas - curso.participantes}</td>
                        <td>
                            <c:choose>
                                <c:when test="${curso.participantes >= curso.plazas}">
                                    Completo
                                </c:when>
                                <c:when test="${curso.plazas - curso.participantes <= 3}">
                                    Últimas plazas
                                </c:when>
                                <c:otherwise>
                                    Disponible
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <p>Total de cursos: ${cursos.size()}</p>

        <c:if test="${cursos.size() >= 5}">
            <p>Tenemos una amplia oferta de cursos este año.</p>
        </c:if>
    </c:otherwise>
</c:choose>

<jsp:include page="/WEB-INF/views/partials/footer.jsp"/>
