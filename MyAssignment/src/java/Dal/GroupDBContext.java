/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Course;
import Model.Group;
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
public class GroupDBContext extends DBContext<Group> {

    public int getGroupIdByStudentId(int studentId) {
        try {
            String sql = "Select Groups.GroupId from Groups\n"
                    + "INNER JOIN  Enroll ON Enroll.groupId = [Groups].groupId \n"
                    + "where Enroll.studentId=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, studentId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int groupId = rs.getInt("GroupId");

                return groupId;
            }

        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return -1;
    }
    public ArrayList<Course> getAllCourseByGroupIdToView(int groupId) {
        ArrayList<Course> courseList = new ArrayList<>();
        try {
            String sql = "Select CS.TeachingScheduleId,Sj.subjectCode ,S.slotName,R.roomName,CS.SessionDate\n" +
"                   from CourseSchedule as CS join Room as R on CS.RoomId = R.roomId \n" +
"                  join Slot as S on CS.SlotId = S.slotId\n" +
"                   join [Subject] as Sj on CS.subjectId = Sj.subjectId \n" +
"                    join Group_Course as GC on GC.TeachingScheduleId = CS.TeachingScheduleId\n" +
"                   where GC.GroupId = ?\n" +
"                  order by CS.sessionDate";
            PreparedStatement stm = connection.prepareStatement(sql);

            stm.setInt(1, groupId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Course c = new Course(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getDate(5)
                ); 
                
                courseList.add(c);
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(GroupDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return courseList;

    }
    

    public Group get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void insert(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void update(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public void delete(Group model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Group getT(String a, String b) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
