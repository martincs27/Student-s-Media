package com.studentsmedia.services;

import com.studentsmedia.exception.DAOException;

public interface UsuarioService {
	int create(String nombre, String apellidos, String email, String password, String username) throws DAOException;
}
