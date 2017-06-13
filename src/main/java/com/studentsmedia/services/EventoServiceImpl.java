package com.studentsmedia.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentsmedia.dao.EventoDAO;
import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.EmptyResultException;
import com.studentsmedia.model.Evento;

@Service
public class EventoServiceImpl implements EventoService{
	
	@Autowired
	private EventoDAO eventoDAO;

	@Override
	public List<Evento> findAll() throws DAOException, EmptyResultException {
		List<Evento> eventos = eventoDAO.findAll();
		return eventos;
	}

}
