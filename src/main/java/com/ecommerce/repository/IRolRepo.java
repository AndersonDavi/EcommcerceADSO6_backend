package com.ecommerce.repository;

import com.ecommerce.model.ERol;
import com.ecommerce.model.Rol;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IRolRepo extends JpaRepository<Rol, Integer> {

    Optional<Rol> findByDescRol(ERol desc_rol);
}
