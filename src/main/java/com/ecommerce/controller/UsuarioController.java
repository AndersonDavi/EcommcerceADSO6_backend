package com.ecommerce.controller;

import java.util.List;
import com.ecommerce.model.Usuario;
import com.ecommerce.repository.IUsuarioRepo;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
@CrossOrigin(origins = "http://localhost:4200") // Permitir solicitudes desde el frontend Angular en este origen
public class UsuarioController {

    @Autowired
    private IUsuarioRepo repo;

    @GetMapping("/usuarios")
    public ResponseEntity<List<Usuario>> getUsuarios() {
        try {
            List<Usuario> usuarios = new ArrayList<Usuario>();
            repo.findAll().forEach(usuarios::add);
            return new ResponseEntity<>(usuarios, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }

    }

}
