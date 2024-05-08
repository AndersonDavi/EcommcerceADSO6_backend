package com.ecommerce.model;

import lombok.Data;
import jakarta.persistence.*;

@Entity
@Data
@Table(name = "usuarios")
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_usuario")
    private int id_usuario;
    @Column(name = "nom_usuario")
    private String nom_usuario;
    @Column(name = "email_usuario")
    private String email_usuario;
    @Column(name = "contraseña_usuario")
    private String contraseña_usuario;
    @Column(name = "direccion_usuario")
    private String direccion_usuario;
    @Column(name = "tel_usuario")
    private String tel_usuario;

    public Usuario() {
    }

    public Usuario(String nom_usuario, String email_usuario, String contraseña_usuario, String direccion_usuario, String tel_usuario) {
        this.nom_usuario = nom_usuario;
        this.email_usuario = email_usuario;
        this.contraseña_usuario = contraseña_usuario;
        this.direccion_usuario = direccion_usuario;
        this.tel_usuario = tel_usuario;
    }

}
