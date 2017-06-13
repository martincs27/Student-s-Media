package com.studentsmedia.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentsmedia.dao.UsuarioDAO;
import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.LoginException;
import com.studentsmedia.model.Usuario;

@Service
public class SecurityServiceImpl implements SecurityService {


	@Autowired
	private UsuarioDAO usuarioDAO;

	@Override
	public Usuario validate(String username, String password) throws LoginException, DAOException {

		Usuario usuario = usuarioDAO.validate(username, password);

		return usuario;
	}


}
