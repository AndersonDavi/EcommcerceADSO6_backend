package com.ecommerce.model;

import lombok.Data;
import jakarta.persistence.*;

@Entity
@Data
@Table(name = "ROLES")
public class Rol {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_rol")
    private Integer id_rol;

    @Enumerated(EnumType.STRING)
    @Column(name = "desc_rol", length = 200)
    private ERol descRol;

    public Rol() {
    }

    public Rol(ERol desc_rol) {
        this.descRol = desc_rol;
    }

}
