package com.studentsmedia.dao;

import java.util.List;

import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.EmptyResultException;
import com.studentsmedia.model.Noticia;

public interface NoticiaDAO {
	List<Noticia> findAll() throws DAOException, EmptyResultException;
}
