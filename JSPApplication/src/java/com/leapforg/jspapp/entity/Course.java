/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapforg.jspapp.entity;

/**
 *
 * @author suren
 */
public class Course {
    private int id;
    private String Name;
    private double fees;
    private boolean status;

    public Course() {
    }

    public Course(int id, String Name, double fees, boolean status) {
        this.id = id;
        this.Name = Name;
        this.fees = fees;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public double getFees() {
        return fees;
    }

    public void setFees(double fees) {
        this.fees = fees;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Course{" + "id=" + id + ", Name=" + Name + ", fees=" + fees + ", status=" + status + '}';
    }
    
    
}
