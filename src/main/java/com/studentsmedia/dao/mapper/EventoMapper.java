package com.studentsmedia.dao.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentsmedia.model.Evento;

public class EventoMapper implements RowMapper<Evento>{

	@Override
	public Evento mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Evento evento = new Evento();
		evento.setEventoId(rs.getInt("id"));
		evento.setTitulo(rs.getString("titulo"));
		evento.setFecha(rs.getDate("fecha"));
		evento.setDescripcion(rs.getString("descripcion"));
		evento.setImagen1(rs.getString("imagen"));
		evento.setImagen2(rs.getString("imagen2"));
		evento.setImagen3(rs.getString("imagen3"));
		return evento;
	}

}
