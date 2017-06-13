package com.studentsmedia.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentsmedia.dao.BeneficioDAO;
import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.EmptyResultException;
import com.studentsmedia.model.Beneficio;

@Service
public class BeneficioServiceImpl implements BeneficioService{
	
	@Autowired
	private BeneficioDAO beneficioDAO;


	@Override
	public List<Beneficio> findAll() throws DAOException, EmptyResultException {
		List<Beneficio> beneficios = beneficioDAO.findAll();
		return beneficios;
	}

}
