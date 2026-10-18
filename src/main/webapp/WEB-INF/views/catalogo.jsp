<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Catálogo de cursos</title>
</head>
<body>
    <header>
        <span>Cuatrovientos Formación</span>
        <nav>
            <a href="${pageContext.request.contextPath}/">Inicio</a>
            <a href="${pageContext.request.contextPath}/catalogo">Catálogo de cursos</a>
        </nav>
    </header>

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

    <footer>
        <p>&copy; 2026 Cuatrovientos Formación · 2º DAM</p>
    </footer>
</body>
</html>
