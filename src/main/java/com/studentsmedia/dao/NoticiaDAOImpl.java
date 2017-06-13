package com.studentsmedia.dao;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentsmedia.dao.mapper.NoticiaMapper;
import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.EmptyResultException;
import com.studentsmedia.model.Noticia;

@Repository
public class NoticiaDAOImpl implements NoticiaDAO{
	
	private static final Logger logger = LoggerFactory.getLogger(NoticiaDAOImpl.class);

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public List<Noticia> findAll() throws DAOException, EmptyResultException {
		String query = "SELECT id, titulo, desc1, desc2,fecha,imagen"
				+ " FROM noticias ";
		try {

			List<Noticia> noticias = jdbcTemplate.query(query, new NoticiaMapper());
			return noticias;

		} catch (EmptyResultDataAccessException e) {
			throw new EmptyResultException();
		} catch (Exception e) {
			logger.info("Error: " + e.getMessage());
			throw new DAOException(e.getMessage());
		}
	}

}
