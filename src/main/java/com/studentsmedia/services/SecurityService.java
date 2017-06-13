package com.studentsmedia.services;

import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.LoginException;
import com.studentsmedia.model.Usuario;
public interface SecurityService {

	Usuario validate(String username, String clave) throws LoginException, DAOException;

}
