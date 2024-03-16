package com.ecommerce.model;

import lombok.Data;
import jakarta.persistence.Entity;
import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Data
@Table(name = "productos")
public class Producto {

    @Id
    private int id_prod;
    @Column(name = "nom_prod")
    private String nom_prod;
    @Column(name = "desc_prod")
    private String desc_prod;
    @Column(name = "marca_prod")
    private String marca_prod;
    @Column(name = "val_prod")
    private float val_prod;

}
