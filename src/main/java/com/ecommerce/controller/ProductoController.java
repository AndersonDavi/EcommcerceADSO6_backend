package com.ecommerce.controller;

import java.util.List;
import com.ecommerce.repository.IProductoRepo;
import com.ecommerce.model.Producto;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class ProductoController {
    
    @Autowired
    private IProductoRepo repo;
    
    @GetMapping("/productos")
    public ResponseEntity<List<Producto>> getProdcutos() {
        try {
            List<Producto> productos = new ArrayList<Producto>();
            repo.findAll().forEach(productos::add);
            return new ResponseEntity<>(productos, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
        
    }
    
    @PostMapping("productos")
    public ResponseEntity<Producto> createProducto(@RequestBody Producto producto) {
        LocalDateTime fechaActual = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String fechaActualString = fechaActual.format(formatter);
        
        try {
            Producto _producto = repo.save(new Producto(producto.getNom_producto(), producto.getDesc_producto(), producto.getMarca_producto(), producto.getModelo_producto(), producto.getVal_producto(), fechaActualString, producto.getCreado_por()));
            return new ResponseEntity<>(_producto, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    
    @PutMapping("productos/{id}")
    public ResponseEntity<Producto> editProducto(@PathVariable("id") int id, @RequestBody Producto producto) {
        Optional<Producto> productoData = repo.findById(id);
        
        if (productoData.isPresent()) {
            Producto _producto = productoData.get();
            _producto.setNom_producto(producto.getNom_producto());
            _producto.setDesc_producto(producto.getDesc_producto());
            _producto.setMarca_producto(producto.getMarca_producto());
            _producto.setModelo_producto(producto.getModelo_producto());
            _producto.setVal_producto(producto.getVal_producto());
            
            return new ResponseEntity<>(repo.save(_producto), HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.NOT_FOUND);
        }
    }
    
    @DeleteMapping("productos/{id}")
    public ResponseEntity<HttpStatus> deleteProducto(@PathVariable("id") int id) {
        try {
            repo.deleteById(id);
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    
}
