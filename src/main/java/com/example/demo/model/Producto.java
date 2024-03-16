package com.example.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Column;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
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

    public int getId_prod() {
        return id_prod;
    }

    public void setId_prod(int id_prod) {
        this.id_prod = id_prod;
    }

    public String getNom_prod() {
        return nom_prod;
    }

    public void setNom_prod(String nom_prod) {
        this.nom_prod = nom_prod;
    }

    public String getDesc_prod() {
        return desc_prod;
    }

    public void setDesc_prod(String desc_prod) {
        this.desc_prod = desc_prod;
    }

    public String getMarca_prod() {
        return marca_prod;
    }

    public void setMarca_prod(String marca_prod) {
        this.marca_prod = marca_prod;
    }

    public float getVal_prod() {
        return val_prod;
    }

    public void setVal_prod(float val_prod) {
        this.val_prod = val_prod;
    }

   
}
