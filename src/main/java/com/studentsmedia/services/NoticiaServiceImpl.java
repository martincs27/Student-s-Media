package com.studentsmedia.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.studentsmedia.dao.NoticiaDAO;
import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.EmptyResultException;
import com.studentsmedia.model.Noticia;

@Service
public class NoticiaServiceImpl implements NoticiaService{

	@Autowired
	private NoticiaDAO noticiaDAO;
	
	@Override
	public List<Noticia> findAll() throws DAOException, EmptyResultException {
		List<Noticia> noticias = noticiaDAO.findAll();
		return noticias;
	}

}
