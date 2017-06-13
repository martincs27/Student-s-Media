package com.studentsmedia.dao;

import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.LoginException;
import com.studentsmedia.model.Usuario;

public interface UsuarioDAO {
	
	public Usuario validate(String username, String password) throws LoginException, DAOException;
	
	int create(String nombre, String apellidos, String email, String password, String username) throws DAOException;	
}
