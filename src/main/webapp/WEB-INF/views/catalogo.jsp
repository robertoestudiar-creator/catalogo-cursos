<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<jsp:include page="/WEB-INF/views/partials/header.jsp"/>

<h1 class="title">Catálogo de cursos</h1>

<c:choose>
    <c:when test="${empty cursos}">
        <p>No hay cursos disponibles.</p>
    </c:when>
    <c:otherwise>
        <div class="box">
        <table class="table is-fullwidth is-striped is-hoverable">
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
                        <td><strong><c:out value="${curso.nombre}"/></strong></td>
                        <td><c:out value="${curso.profesor}"/></td>
                        <td>${curso.participantes}</td>
                        <td>${curso.plazas}</td>
                        <td>${curso.plazas - curso.participantes}</td>
                        <td>
                            <c:choose>
                                <c:when test="${curso.participantes >= curso.plazas}">
                                    <span class="tag is-danger is-light">Completo</span>
                                </c:when>
                                <c:when test="${curso.plazas - curso.participantes <= 3}">
                                    <span class="tag is-warning is-light">Últimas plazas</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="tag is-success is-light">Disponible</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        </div>

        <p>Total de cursos: ${cursos.size()}</p>

        <c:if test="${cursos.size() >= 5}">
            <p>Tenemos una amplia oferta de cursos este año.</p>
        </c:if>
    </c:otherwise>
</c:choose>

<jsp:include page="/WEB-INF/views/partials/footer.jsp"/>
