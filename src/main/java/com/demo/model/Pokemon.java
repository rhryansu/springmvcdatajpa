package com.demo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Pokemon {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String pokename;
    private String poketype;
    private String pokespeed;

    public Pokemon() {

    }

    public String getPokename() {
        return pokename;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPoketype() {
        return poketype;
    }

    public void setPoketype(String poketype) {
        this.poketype = poketype;
    }

    public String getPokespeed() {
        return pokespeed;
    }

    public void setPokespeed(String pokespeed) {
        this.pokespeed = pokespeed;
    }

    public void setPokename(String pokename) {
        this.pokename = pokename;
    }

    public Pokemon(String pokename, String poketype, String pokespeed) {
        this.pokename = pokename;
        this.poketype = poketype;
        this.pokespeed = pokespeed;
    }
}
