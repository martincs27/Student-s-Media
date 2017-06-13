package com.studentsmedia.services;

import java.util.List;

import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.EmptyResultException;
import com.studentsmedia.model.Evento;

public interface EventoService {
	List<Evento> findAll() throws DAOException, EmptyResultException;
}
