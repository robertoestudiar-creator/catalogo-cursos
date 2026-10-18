<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!doctype html>
<html lang="es" data-theme="light">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><c:out value="${pageTitle}"/></title>
    <c:url var="cssUrl" value="/css/estilos.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.2/css/bulma.min.css">
    <link rel="stylesheet" href="${cssUrl}">
</head>
<body>
    <header>
        <nav class="navbar" aria-label="Navegación principal">
            <c:url var="homeUrl" value="/"/>
            <c:url var="catalogoUrl" value="/catalogo"/>
            <div class="navbar-brand">
                <a class="navbar-item" href="${homeUrl}">Inicio</a>
                <a class="navbar-item" href="${catalogoUrl}">Catálogo de cursos</a>
            </div>
        </nav>
    </header>
    <main class="section container">
