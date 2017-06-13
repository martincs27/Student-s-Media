package com.studentsmedia.dao;

import java.util.List;

import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.EmptyResultException;
import com.studentsmedia.model.Beneficio;

public interface BeneficioDAO {
	List<Beneficio> findAll() throws DAOException, EmptyResultException;
}
