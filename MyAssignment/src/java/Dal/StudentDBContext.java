/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Group;
import Model.Student;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import static org.apache.tomcat.jni.User.gid;

/**
 *
 * @author Cuong Bui
 */
public class StudentDBContext extends DBContext<Student> {

    public ArrayList<Student> list() {
        ArrayList<Student> student = new ArrayList<>();
        try {
            String sql = "SELECT [sid]\n"
                    + "      ,[rollnumber]\n"
                    + "      ,[sname]\n"
                    + "      ,[sgender]\n"
                    + "      ,[sdob]\n"
                    + "      ,[simg]\n"
                    + "      ,[sphone]\n"
                    + "  FROM [dbo].[Student]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
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

    public ArrayList getStudentListByGroupId(int gid) {
        ArrayList<Student> students = new ArrayList<>();
        try {
            String sql = "SELECT   S.*  FROM   [Group] INNER JOIN \n"
                    + "                                          Enroll ON Enroll.gid = [Group].gid INNER JOIN \n"
                    + "                                         Student as S ON Enroll.sid = S.sid\n"
                    + "                    					  where [Group].gid=?";
            PreparedStatement stm = connection.prepareStatement(sql);

            stm.setInt(1, gid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                s.setId(rs.getInt("sid"));
                s.setRollnumber(rs.getString("rollnumber"));

                s.setName(rs.getString("sname"));
                s.setGender(rs.getBoolean("sgender"));
                s.setDob(rs.getDate("sdob"));
                s.setImg(rs.getString("simg"));
                s.setPhone(rs.getString("sphone"));               
                students.add(s);

            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return students;

    }

    public void insert(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void update(Student model) {
        try {
            String sql = "UPDATE [Student]\n"
                    + "   SET \n"
                    + "      [rollnumber] = ?\n"
                    + "      ,[sname] = ?\n"
                    + "      ,[sgender] =?\n"
                    + "      ,[sdob] = ?\n"
                    + "      ,[sphone] = ?\n"
                    + " WHERE [sid] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(2, model.getRollnumber());
            stm.setString(3, model.getName());
            stm.setBoolean(4, model.isGender());
            stm.setDate(5, model.getDob());
            stm.setString(7, model.getPhone());
            stm.executeUpdate();

        } catch (Exception ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void delete(Student model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Student getT(String a, String b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

  

}
