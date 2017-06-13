package com.studentsmedia.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentsmedia.dao.UsuarioDAO;
import com.studentsmedia.exception.DAOException;

@Service
public class UsuarioServiceImpl implements UsuarioService{
	@Autowired
	private UsuarioDAO usuarioDAO;

	@Override
	public int create(String nombre, String apellidos, String email, String password, String username)
			throws DAOException {

		int userId = usuarioDAO.create(nombre, password, email, password, username);

		return userId;
	}
}
