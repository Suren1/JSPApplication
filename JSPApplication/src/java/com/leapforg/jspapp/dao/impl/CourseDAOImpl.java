/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapforg.jspapp.dao.impl;

import com.leapforg.jspapp.dao.CourseDAO;
import com.leapforg.jspapp.entity.Course;
import com.leapfrog.jspapp.dbutils.DbConnection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author suren
 */
public class CourseDAOImpl implements CourseDAO{
    
    private DbConnection db=new DbConnection();
    

    @Override
    public List<Course> getAll()throws ClassNotFoundException,SQLException{
                List<Course> courseList= new ArrayList<>();
                String sql= "select * from tbl_courses";
                db.open();
                db.initStatement(sql);
                ResultSet rs = db.executeQuery();
                while(rs.next()){
                Course c= new Course();
                c.setId(rs.getInt("course_id"));
                c.setName(rs.getString("course_name"));
                c.setFees(rs.getDouble("fees"));
                c.setStatus(rs.getBoolean("status"));
               
                courseList.add(c);
                        }
   
                
                return courseList;   
    }

    @Override
    public int insert(Course c) throws ClassNotFoundException, SQLException {
       db.open();
       String sql= "insert into tbl_courses (course_name,fees,status) values(?,?,?)";
        PreparedStatement stmt= db.initStatement(sql);
        stmt.setString(1, c.getName());
        stmt.setDouble(2, c.getFees());
        stmt.setBoolean(3, c.isStatus());
        int result = db.executeUpdate();
        db.close();
        return result;
        
    }

    @Override
    public Course getById(int id) throws ClassNotFoundException, SQLException {
        Course c= null;
        String sql= "select * from tbl_courses where course_id=?";
        db.open();
        PreparedStatement stmt= db.initStatement(sql);
        stmt.setInt(1,id);
        ResultSet rs = db.executeQuery();
        while(rs.next()){
            c= new Course();
            c.setId(rs.getInt("course_id"));
            c.setName(rs.getString("course_name"));
            c.setFees(rs.getDouble("fees"));
            c.setStatus(rs.getBoolean("status"));
            }
        db.close();
        return c;
    }
    
}
