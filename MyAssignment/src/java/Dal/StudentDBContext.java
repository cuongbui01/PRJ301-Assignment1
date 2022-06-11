/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Student;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Cuong Bui
 */
public class StudentDBContext extends DBContext<Student>{

    @Override
    public ArrayList<Student> list() {
        ArrayList<Student> student = new ArrayList<>();
        try {
            String sql ="SELECT [sid]\n" +
                        "      ,[rollnumber]\n" +
                        "      ,[sname]\n" +
                        "      ,[sgender]\n" +
                        "      ,[sdob]\n" +
                        "      ,[simg]\n" +
                        "      ,[sphone]\n" +
                        "  FROM [dbo].[Student]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while(rs.next()){
                Student s = new Student();
                s.setId(rs.getInt("sid"));
                s.setRollnumber(rs.getString("rollnumber"));
                s.setName(rs.getString("sname"));
                s.setGender(rs.getBoolean("sgender"));
                s.setDob(rs.getDate("sdob"));
                s.setImg(rs.getString("simg"));
                s.setPhone(rs.getString("sphone"));
                student.add(s);
            }
            
        } catch (Exception ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return student;
    }

    @Override
    public Student get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void insert(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Student getT(String a, String b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

     public static void main(String[] args) {
        StudentDBContext a = new StudentDBContext();
        ArrayList<Student> acc = a.list();
        System.out.println(acc);
    }
    
}
