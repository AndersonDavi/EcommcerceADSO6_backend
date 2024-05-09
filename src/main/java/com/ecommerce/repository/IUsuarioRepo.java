package com.ecommerce.repository;

import com.ecommerce.model.Usuario;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IUsuarioRepo extends JpaRepository<Usuario, Integer> {

    public List<Usuario> findAll();
}
