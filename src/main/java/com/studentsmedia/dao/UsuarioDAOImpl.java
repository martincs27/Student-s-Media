package com.studentsmedia.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentsmedia.dao.mapper.UsuarioMapper;
import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.LoginException;
import com.studentsmedia.model.Usuario;

@Repository
public class UsuarioDAOImpl implements UsuarioDAO{
	
	private static final Logger logger = LoggerFactory.getLogger(UsuarioDAOImpl.class);

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public Usuario validate(String username, String password) throws LoginException, DAOException {
		logger.info("validate(): username: " +username+ ", clave: " + password);
		if ("".equals(username) && "".equals(password)) {
			throw new LoginException("Login and password incorrect");
		}
		String query = "SELECT username, password, id, nombre, apellidos, email"
				+ " FROM usuarios WHERE username=? AND password=?";

		Object[] params = new Object[] { username, password };
		try {
			Usuario usuario = (Usuario) jdbcTemplate.queryForObject(query, params, new UsuarioMapper());
			return usuario;
		} catch (EmptyResultDataAccessException e) {
			logger.info("Employee y/o clave incorrecto");
			throw new LoginException();
		} catch (Exception e) {
			logger.info("Error: " + e.getMessage());
			throw new DAOException(e.getMessage());
		}
	}

	@Override
	public int create(String nombre, String apellidos, String email, String password, String username)
			throws DAOException {
		String query = "INSERT INTO usuarios (nombre, apellidos, email, password, username)  VALUES ( ?,?,?,?,? )";
		Object[] params = new Object[] { nombre, apellidos, email, password, username};
		Usuario usuario = null;
		try {
			// create
			jdbcTemplate.update(query, params);
			// search
			usuario = this.validate(username, password);
		} catch (Exception e) {
			logger.info("Error: " + e.getMessage());
			throw new DAOException(e.getMessage());
		}
		return usuario != null ? usuario.getUsuarioId() : -1;
	}
	
}
