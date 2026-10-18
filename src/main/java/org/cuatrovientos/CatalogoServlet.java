package org.cuatrovientos;

import java.io.IOException;
import java.util.List;

import org.cuatrovientos.curso.Curso;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/catalogo")
public class CatalogoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Curso> cursos = List.of(
            new Curso(1, "Java desde cero", "Laura Martínez", 20, 14),
            new Curso(2, "Desarrollo web con Jakarta EE", "Iñaki Goñi", 18, 18),
            new Curso(3, "HTML5 y CSS3", "Ane Etxeberria", 30, 12),
            new Curso(4, "Bases de datos con MySQL", "Javier Ruiz", 25, 23),
            new Curso(5, "Git y GitHub", "Marta Sanz", 40, 9)
        );

        request.setAttribute("cursos", cursos);
        request.getRequestDispatcher("/WEB-INF/views/catalogo.jsp").forward(request, response);
    }
}
