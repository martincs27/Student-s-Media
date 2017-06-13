package com.studentsmedia.dao;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.studentsmedia.dao.mapper.BeneficioMapper;
import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.EmptyResultException;
import com.studentsmedia.model.Beneficio;

@Repository
public class BeneficioDAOImpl implements BeneficioDAO{
	
	private static final Logger logger = LoggerFactory.getLogger(BeneficioDAOImpl.class);

	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Beneficio> findAll() throws DAOException, EmptyResultException {
		String query = "SELECT id, entidad, descripcion, fechafin, imagen"
				+ " FROM beneficios ";
		try {

			List<Beneficio> beneficios= jdbcTemplate.query(query, new BeneficioMapper());
			return beneficios;
		} catch (EmptyResultDataAccessException e) {
			throw new EmptyResultException();
		} catch (Exception e) {
			logger.info("Error: " + e.getMessage());
			throw new DAOException(e.getMessage());
		}
	}

}
