package com.studentsmedia.control;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.studentsmedia.model.Evento;
import com.studentsmedia.services.EventoService;

@Controller
public class EventoController {

	private static final Logger logger = LoggerFactory.getLogger(EventoController.class);

	@Autowired
	private EventoService eventoService;

	@GetMapping("/eventos")
	public String list(@ModelAttribute("SpringWeb") Evento evento, ModelMap model) {

		try {
			model.addAttribute("eventos", eventoService.findAll());
		} catch (Exception e) {
			logger.info(e.getMessage());
			model.addAttribute("message", e.getMessage());
		}

		return "eventos";
	}
}