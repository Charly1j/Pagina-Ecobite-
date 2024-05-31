package com.dojo.EcoBite.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControladorMapa {
    
    @GetMapping("/mapa")
    public String dashboard(){
        return "mapa.jsp";
    }
}
