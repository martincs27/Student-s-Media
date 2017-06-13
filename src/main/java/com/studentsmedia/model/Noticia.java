package com.studentsmedia.model;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class Noticia {
	int noticiaId;
	String titulo;
	String desc1;
	String desc2;
	Date fecha;
	String imagen;
	public Noticia() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Noticia(int noticiaId, String titulo, String desc1, String desc2, Date fecha, String imagen) {
		super();
		this.noticiaId = noticiaId;
		this.titulo = titulo;
		this.desc1 = desc1;
		this.desc2 = desc2;
		this.fecha = fecha;
		this.imagen = imagen;
	}
	public Date getFecha() {
		return fecha;
	}
	public String getMonth() {
		Calendar cal = Calendar.getInstance();
		cal.setTime(fecha);
	    return new SimpleDateFormat("MMM").format(cal.getTime());
	}
	public int getDay(){
		Calendar cal = Calendar.getInstance();
		cal.setTime(fecha);
		int day= cal.get(Calendar.DAY_OF_MONTH);
		return day;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	public int getNoticiaId() {
		return noticiaId;
	}
	public void setNoticiaId(int noticiaId) {
		this.noticiaId = noticiaId;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getDesc1() {
		return desc1;
	}
	public void setDesc1(String desc1) {
		this.desc1 = desc1;
	}
	public String getDesc2() {
		return desc2;
	}
	public void setDesc2(String desc2) {
		this.desc2 = desc2;
	}
	@Override
	public String toString() {
		return "Noticia [noticiaId=" + noticiaId + ", titulo=" + titulo + ", desc1=" + desc1 + ", desc2=" + desc2 + "]";
	}
}
