package com.studentsmedia.model;

import java.util.Date;
import java.text.SimpleDateFormat;

public class Beneficio {
	int beneficioId;
	String entidad;
	String descripcion;
	Date fechafin;
	String imagen;
	String estado;
	public String getEstado(){
		Date today = new Date();
		if(today.after(fechafin)){
			estado="Vencido";
		}else{
			estado="Vigente";
		}
		return estado;
	}
	public Beneficio(int beneficioId, String entidad, String descripcion, Date fechafin, String imagen) {
		super();
		this.beneficioId = beneficioId;
		this.entidad = entidad;
		this.descripcion = descripcion;
		this.fechafin = fechafin;
		this.imagen = imagen;
	}
	public Beneficio() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Beneficio [beneficioId=" + beneficioId + ", entidad=" + entidad + ", descripcion=" + descripcion
				+ ", fechafin=" + fechafin + ", imagen=" + imagen + "]";
	}
	public int getbeneficioId() {
		return beneficioId;
	}
	public void setbeneficioId(int beneficioId) {
		this.beneficioId = beneficioId;
	}
	public String getEntidad() {
		return entidad;
	}
	public void setEntidad(String entidad) {
		this.entidad = entidad;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getFechafin() {
		SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
		return sdf.format(fechafin);
	}
	public void setFechafin(Date fechafin) {
		this.fechafin = fechafin;
	}
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
}
