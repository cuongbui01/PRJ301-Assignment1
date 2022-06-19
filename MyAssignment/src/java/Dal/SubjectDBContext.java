/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Group;
import Model.Student;
import Model.Subjects;
import Model.Subjects;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Cuong Bui
 */
public class SubjectDBContext extends DBContext<Subjects> {
//     public ArrayList<Subjects> SubjectsbySubjectid(int suid) {
//        ArrayList<Subjects> subjects = new ArrayList<>();
//        try {
//            String sql = "select * from [Subject]";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setInt(1, suid);
//            ResultSet rs = stm.executeQuery();
//            while (rs.next()) {
//                
//                Subjects g = new Subjects();
//                g.setSubid(rs.getInt("subid"));
//                g.setSubname(rs.getString("subname"));
//               g.setSubcode(rs.getString("subcode"));
//                
//                subjects.add(g);
//            }
//
//        } catch (Exception ex) {
//            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return subjects;
//    }

    public ArrayList<Subjects> list() {
        ArrayList<Subjects> subjects = new ArrayList<>();
        try {
            String sql = "SELECT [subid]\n"
                    + "      ,[subcode]\n"
                    + "      ,[subname]\n"
                    + "  FROM [dbo].[Subject]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Subjects s = new Subjects();
                s.setSubid(rs.getInt("subid"));
                s.setSubname(rs.getString("subname"));
                s.setSubcode(rs.getString("subcode"));

                subjects.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return subjects;

    }

    public Subjects get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void insert(Subjects model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void update(Subjects model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void delete(Subjects model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Subjects getT(String a, String b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    Subjects getSubjectById(int id) {
        Subjects s = new Subjects();
        try {
            String sql = "select * from [Subject] where [Subject].subid = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
           
            while (rs.next()) {

                s.setSubid(rs.getInt("subid"));
                s.setSubname(rs.getString("subname"));
                s.setSubcode(rs.getString("subcode"));

               return s;
            }
        } catch (SQLException ex) {
            Logger.getLogger(SubjectDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
