package com.dojo.EcoBite.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/informacion")
	public String info() {
		return "info.jsp";
	}

	@GetMapping("/atencioncliente")
	public String atc() {
		return "atc.jsp";
	}

	@GetMapping("/aranceles")
	public String aranceles() {
		return "aranceles.jsp";
	}

	@GetMapping("/alfombras")
	public String alfombras() {
		return "alfombras.jsp";
	}

	@GetMapping("/mantas")
	public String mantas() {
		return "mantas.jsp";
	}

	@GetMapping("/cortinas")
	public String cortinas() {
		return "cortinas.jsp";
	}
}
