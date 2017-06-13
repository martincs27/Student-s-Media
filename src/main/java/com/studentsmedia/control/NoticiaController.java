package com.studentsmedia.control;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.studentsmedia.model.Noticia;
import com.studentsmedia.services.NoticiaService;

@Controller
public class NoticiaController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoticiaController.class);

	@Autowired
	private NoticiaService noticiaService;
	
	@GetMapping("/noticias")
	public String list(@ModelAttribute("SpringWeb") Noticia noticia, ModelMap model) {

		try {
			model.addAttribute("noticias", noticiaService.findAll());
		} catch (Exception e) {
			logger.info(e.getMessage());
			model.addAttribute("message", e.getMessage());
		}

		return "noticias";
	}
}
