/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Student;
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
public class StudentDBContext extends DBContext<Student> {

    public Student getStudentById(int id) {
        try {
            String sql = "select * from Student where studentId = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student stu = new Student(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getBoolean(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                );
                return stu;
            }

        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public ArrayList<Student> getStudentListByGroupId(int gid) {
        ArrayList<Student> students = new ArrayList<>();
        try {
            String sql = "SELECT   S.*  FROM   [Group] INNER JOIN  Enroll ON Enroll.groupId = [Group].groupId INNER JOIN\n" +
"                                                          Student as S ON Enroll.studentId = S.studentId\n" +
"                                    					  where [Group].groupId=?";
            PreparedStatement stm = connection.prepareStatement(sql);

            stm.setInt(1, gid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student stu = new Student(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getBoolean(4),
                        rs.getDate(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                ); 
                
                students.add(stu);
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return students;

    }
//
//    public void update(Students model) {
//        try {
//            String sql = "UPDATE [Student]\n"
//                    + "   SET \n"
//                    + "      [rollnumber] = ?\n"
//                    + "      ,[sname] = ?\n"
//                    + "      ,[sgender] =?\n"
//                    + "      ,[sdob] = ?\n"
//                    + "      ,[sphone] = ?\n"
//                    + " WHERE [sid] = ?";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(2, model.getRollnumber());
//            stm.setString(3, model.getName());
//            stm.setBoolean(4, model.isGender());
//            stm.setDate(5, model.getDob());
//            stm.setString(7, model.getPhone());
//            stm.executeUpdate();
//
//        } catch (Exception ex) {
//            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }

    public void delete(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Student getT(String a, String b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

  

}
