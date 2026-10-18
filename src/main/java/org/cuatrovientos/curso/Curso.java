package org.cuatrovientos.curso;

public class Curso {

    private long id;
    private String nombre;
    private String profesor;
    private int plazas;
    private int participantes;

    public Curso(long id, String nombre, String profesor, int plazas, int participantes) {
        this.id = id;
        this.nombre = nombre;
        this.profesor = profesor;
        this.plazas = plazas;
        this.participantes = participantes;
    }

    public long getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public String getProfesor() {
        return profesor;
    }

    public int getPlazas() {
        return plazas;
    }

    public int getParticipantes() {
        return participantes;
    }
}
