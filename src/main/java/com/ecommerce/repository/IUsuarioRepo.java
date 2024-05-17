package com.ecommerce.repository;

import com.ecommerce.model.Usuario;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IUsuarioRepo extends JpaRepository<Usuario, Integer> {

    public List<Usuario> findAll();

    Optional<Usuario> findByEmailUsuario(String email_usuario);

    Boolean existsByEmailUsuario(String email_usuario);

}
