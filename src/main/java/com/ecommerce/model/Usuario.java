package com.ecommerce.model;

import lombok.Data;
import jakarta.persistence.*;

@Entity
@Data
@Table(name = "USUARIOS")
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_usuario")
    private int id_usuario;
    @Column(name = "nom_usuario")
    private String nom_usuario;
    @Column(name = "email_usuario")
    private String emailUsuario;
    @Column(name = "contraseña_usuario")
    private String contraseña_usuario;
    @Column(name = "direccion_usuario")
    private String direccion_usuario;
    @Column(name = "tel_usuario")
    private String tel_usuario;
    @Column(name = "rol_usuario")
    private int rol_usuario;

    public Usuario() {
    }

    public Usuario(String nom_usuario, String emailUsuario, String contraseña_usuario, String direccion_usuario, String tel_usuario, int rol_usuario) {
        this.nom_usuario = nom_usuario;
        this.emailUsuario = emailUsuario;
        this.contraseña_usuario = contraseña_usuario;
        this.direccion_usuario = direccion_usuario;
        this.tel_usuario = tel_usuario;
        this.rol_usuario = rol_usuario;

    }

}
