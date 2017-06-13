package com.studentsmedia.dao.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentsmedia.model.Usuario;

public class UsuarioMapper implements RowMapper<Usuario>{

	@Override
	public Usuario mapRow(ResultSet rs, int rowNum) throws SQLException {
		Usuario usuario = new Usuario();
		usuario.setUsuarioId(rs.getInt("id"));
		usuario.setNombre(rs.getString("nombre"));
		usuario.setApellidos(rs.getString("apellidos"));
		usuario.setEmail(rs.getString("email"));
		usuario.setPassword(rs.getString("password"));
		usuario.setUsername(rs.getString("username"));
		return usuario;
	}

}
