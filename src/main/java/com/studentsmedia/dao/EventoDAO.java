package com.studentsmedia.dao;

import java.util.List;

import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.EmptyResultException;
import com.studentsmedia.model.Evento;

public interface EventoDAO {
	List<Evento> findAll() throws DAOException, EmptyResultException;

}
