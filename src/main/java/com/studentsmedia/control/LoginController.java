package com.studentsmedia.control;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.studentsmedia.exception.DAOException;
import com.studentsmedia.exception.LoginException;
import com.studentsmedia.model.Usuario;
import com.studentsmedia.services.SecurityService;
import com.studentsmedia.services.UsuarioService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private SecurityService securityService;
	
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping("/index")
	public String menu() {

		return "index";
	}

	@GetMapping("/")
	public ModelAndView preLogin() {
		Usuario usuario = new Usuario();
		return new ModelAndView("login", "command", usuario);
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@PostMapping("/")
	public ModelAndView login(@ModelAttribute("SpringWeb") Usuario usuario, ModelMap model) {

		
		logger.info("login()");
		logger.info(usuario.toString());

		ModelAndView modelAndView = null;

		try {
			Usuario user = securityService.validate(usuario.getUsername(), usuario.getPassword());
			logger.info(user.toString());
			modelAndView = new ModelAndView("redirect:/index");
		} catch (LoginException e) {
			// TODO Auto-generated catch block
			model.addAttribute("message", "Usuario y/o clave incorrectos");
			modelAndView = new ModelAndView("login", "command", new Usuario());
		} catch (DAOException e) {
			// TODO Auto-generated catch block
			model.addAttribute("message", e.getMessage());
			modelAndView = new ModelAndView("login", "command", new Usuario());
		}

		return modelAndView;
	}
	@GetMapping("/register")
	public ModelAndView register() {
		Usuario usuario = new Usuario();
		return new ModelAndView("register", "command", usuario);
	}
	@PostMapping("/register")
	public ModelAndView register(@ModelAttribute("SpringWeb") Usuario usuario, ModelMap model) {
		ModelAndView modelAndView = null;
		try {
			int userId = usuarioService.create(usuario.getNombre(),usuario.getApellidos(), usuario.getEmail(), 
					usuario.getPassword(), usuario.getUsername());
			logger.info( "new Usuario ID = " + userId);
			modelAndView = new ModelAndView("redirect:/");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			modelAndView = new ModelAndView("redirect:/register");
		}

		return modelAndView;
	}
}
