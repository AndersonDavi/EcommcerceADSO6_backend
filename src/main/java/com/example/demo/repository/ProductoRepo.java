package com.example.demo.repository;

import com.example.demo.model.Producto;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductoRepo extends JpaRepository<Producto, Integer> {
    List<Producto> findAll();
}

