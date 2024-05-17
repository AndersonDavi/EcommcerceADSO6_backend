package com.ecommerce.repository;

import com.ecommerce.model.Producto;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IProductoRepo extends JpaRepository<Producto, Integer> {

    public List<Producto> findAll();
}
