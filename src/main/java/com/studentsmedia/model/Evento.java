package com.studentsmedia.model;

import java.sql.Date;

public class Evento {
	int eventoId;
	String titulo;
	String descripcion;
	Date fecha;
	String imagen1;
	String imagen2;
	String imagen3;
	@Override
	public String toString() {
		return "Evento [eventoId=" + eventoId + ", titulo=" + titulo + ", descripcion=" + descripcion + ", fecha="
				+ fecha + ", imagen1=" + imagen1 + ", imagen2=" + imagen2 + ", imagen3=" + imagen3 + "]";
	}
	public Evento() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Evento(int eventoId, String titulo, String descripcion, Date fecha, String imagen1, String imagen2,
			String imagen3) {
		super();
		this.eventoId = eventoId;
		this.titulo = titulo;
		this.descripcion = descripcion;
		this.fecha = fecha;
		this.imagen1 = imagen1;
		this.imagen2 = imagen2;
		this.imagen3 = imagen3;
	}
	public int getEventoId() {
		return eventoId;
	}
	public void setEventoId(int eventoId) {
		this.eventoId = eventoId;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public String getImagen1() {
		return imagen1;
	}
	public void setImagen1(String imagen1) {
		this.imagen1 = imagen1;
	}
	public String getImagen2() {
		return imagen2;
	}
	public void setImagen2(String imagen2) {
		this.imagen2 = imagen2;
	}
	public String getImagen3() {
		return imagen3;
	}
	public void setImagen3(String imagen3) {
		this.imagen3 = imagen3;
	}
}
