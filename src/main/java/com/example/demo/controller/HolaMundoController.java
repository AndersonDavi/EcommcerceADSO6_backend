package com.example.demo.controller;

import com.example.demo.repository.ProductoRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;

//@RestController
@Controller
public class HolaMundoController {

//    @Autowired
//    private ProductoRepo repo;

    @GetMapping("/saludo")
    public String hello(@RequestParam(value = "name", defaultValue = "World") String name, Model model) {
//        repo.findAll();
        System.out.println("Si esta llegando acaq");
        model.addAttribute("name", name);
        return "holas";
    }

}
