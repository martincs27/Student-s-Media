package com.studentsmedia.control;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.studentsmedia.model.Beneficio;
import com.studentsmedia.services.BeneficioService;

@Controller
public class BeneficioController {
	
	private static final Logger logger = LoggerFactory.getLogger(BeneficioController.class);
	
	@Autowired
	private BeneficioService beneficioService;
	
	@GetMapping("/beneficios")
	public String list(@ModelAttribute("SpringWeb") Beneficio beneficio, ModelMap model) {

		try {
			model.addAttribute("beneficios", beneficioService.findAll());
		} catch (Exception e) {
			logger.info(e.getMessage());
			model.addAttribute("message", e.getMessage());
		}

		return "beneficios";
	}

}
