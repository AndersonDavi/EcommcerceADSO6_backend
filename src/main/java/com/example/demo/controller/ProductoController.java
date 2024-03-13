package com.example.demo.controller;

import com.example.demo.model.Producto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;
import com.example.demo.repository.ProductoRepo;

@RestController
//@Controller
public class ProductoController {

    @GetMapping("/hello")
    public String hello() {
        System.out.println("Aca tambien");
        return "hola";
    }

}
