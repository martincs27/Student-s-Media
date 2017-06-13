package com.studentsmedia.services;

import java.util.List;

import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.EmptyResultException;
import com.studentsmedia.model.Beneficio;

public interface BeneficioService {
	List<Beneficio> findAll() throws DAOException, EmptyResultException;

}
