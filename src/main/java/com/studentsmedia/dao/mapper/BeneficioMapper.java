package com.studentsmedia.dao.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.studentsmedia.model.Beneficio;

public class BeneficioMapper implements RowMapper<Beneficio>{

	@Override
	public Beneficio mapRow(ResultSet rs, int rowNum) throws SQLException {
		Beneficio beneficio = new Beneficio();
		beneficio.setbeneficioId(rs.getInt("id"));
		beneficio.setDescripcion(rs.getString("descripcion"));
		beneficio.setFechafin(rs.getDate("fechafin"));
		beneficio.setEntidad(rs.getString("entidad"));
		beneficio.setImagen(rs.getString("imagen"));
		return beneficio;
	}

}
