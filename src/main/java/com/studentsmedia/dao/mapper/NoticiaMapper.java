package com.studentsmedia.dao.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentsmedia.model.Noticia;

public class NoticiaMapper implements RowMapper<Noticia>{

	@Override
	public Noticia mapRow(ResultSet rs, int rowNum) throws SQLException {
		Noticia noticia = new Noticia();
		noticia.setNoticiaId(rs.getInt("id"));
		noticia.setTitulo(rs.getString("titulo"));
		noticia.setDesc1(rs.getString("desc1"));
		noticia.setDesc2(rs.getString("desc2"));
		noticia.setFecha(rs.getDate("fecha"));
		noticia.setImagen(rs.getString("imagen"));
		return noticia;
	}

}
