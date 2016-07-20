/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapforg.jspapp.dao;

import com.leapforg.jspapp.entity.Course;
import java.sql.SQLException;
import java.util.List;



/**
 *
 * @author suren
 */
public interface CourseDAO {
    List<Course> getAll() throws ClassNotFoundException,SQLException;
    int insert (Course c) throws ClassNotFoundException,SQLException;
    Course getById(int id)throws ClassNotFoundException,SQLException;
    
}
