package com.ecommerce.controller;

import com.ecommerce.model.Producto;
import com.ecommerce.repository.ProductoRepo;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;

//@RestController
@Controller
public class ProductoController {

    @Autowired
    private ProductoRepo repo;

    @GetMapping("/saludo")
    public String hello(Model model) {
        List<Producto> productos = repo.findAll();
        System.out.println("Cantidad de productos: " + productos.size());
        for (Producto producto : productos) {
            System.out.println("ID: " + producto.getId_prod());
            System.out.println("Nombre: " + producto.getNom_prod());
            System.out.println("Descripcion: " + producto.getDesc_prod());
            System.out.println("Marca: " + producto.getMarca_prod());
            System.out.println("Valor: " + producto.getVal_prod());
            System.out.println("--------------------------");
        }
        model.addAttribute("productos", productos);
        return "productos";
    }

}
