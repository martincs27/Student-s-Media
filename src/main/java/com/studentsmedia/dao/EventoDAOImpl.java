package com.studentsmedia.dao;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentsmedia.dao.mapper.EventoMapper;
import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.EmptyResultException;
import com.studentsmedia.model.Evento;

@Repository
public class EventoDAOImpl implements EventoDAO{

	
	private static final Logger logger = LoggerFactory.getLogger(EventoDAOImpl.class);

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Evento> findAll() throws DAOException, EmptyResultException {
		String query = "SELECT id, titulo, fecha, lugar, descripcion, imagen, imagen2, imagen3"
				+ " FROM eventos";
		try {

			List<Evento> eventos = jdbcTemplate.query(query, new EventoMapper());
			return eventos;
		} catch (EmptyResultDataAccessException e) {
			throw new EmptyResultException();
		} catch (Exception e) {
			logger.info("Error: " + e.getMessage());
			throw new DAOException(e.getMessage());
		}
	}

}
