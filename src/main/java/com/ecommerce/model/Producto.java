package com.ecommerce.model;

import lombok.Data;
import jakarta.persistence.*;

@Entity
@Data
@Table(name = "productos")
public class Producto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_producto")
    private int id_producto;
    @Column(name = "nom_producto")
    private String nom_producto;
    @Column(name = "desc_producto")
    private String desc_producto;
    @Column(name = "marca_producto")
    private String marca_producto;
    @Column(name = "modelo_producto")
    private String modelo_producto;
    @Column(name = "val_producto")
    private float val_producto;
    @Column(name = "fec_creado")
    private String fec_creado;
    @Column(name = "creado_por")
    private Integer creado_por;
    @Column(name = "img_url")
    private String img_url;

    public Producto() {
    }

    public Producto(String nom_producto, String desc_producto, String marca_producto, String modelo_producto, float val_producto, String fec_creado, int creado_por, String img_url) {
        this.nom_producto = nom_producto;
        this.desc_producto = desc_producto;
        this.marca_producto = marca_producto;
        this.modelo_producto = modelo_producto;
        this.val_producto = val_producto;
        this.fec_creado = fec_creado;
        this.creado_por = creado_por;
    }

}
