package com.studentsmedia.model;

public class Usuario {
	int usuarioId;
	String nombre;
	String apellidos;
	String email;
	String password;
	String username;
	public Usuario() {
		super();
	}
	public Usuario(String nombre, String apellidos, String email, String password, String username) {
		super();
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.email = email;
		this.password = password;
		this.username = username;
	}
	public int getUsuarioId() {
		return usuarioId;
	}
	public void setUsuarioId(int usuarioId) {
		this.usuarioId = usuarioId;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "Usuario [usuarioId=" + usuarioId + ", nombre=" + nombre + ", apellidos=" + apellidos + ", email="
				+ email + ", password=" + password + ", username=" + username + "]";
	}	
	
}
