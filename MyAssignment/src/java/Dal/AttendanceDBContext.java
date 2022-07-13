/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Attendance;
import Model.Course;
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
public class AttendanceDBContext extends DBContext<Object> {

    public ArrayList<Attendance> getAllAttendanceBySubjectCode(int studentId, String subjectCode) {
        ArrayList<Attendance> attList = new ArrayList<>();
        try {
            String sql = "select Sj.subjectName,Sj.subjectCode, R.roomName,S.slotName, G.GroupCode, CS.SessionDate , L.lectureCode,RCB.IsAbsent,RCB.Comment\n"
                    + "                   from RollCallBook as RCB\n"
                    + "                  left join CourseSchedule as CS on RCB.TeachingScheduleId = CS.TeachingScheduleId\n"
                    + "                  left join Room as R on CS.RoomId = R.roomId\n"
                    + "                  left join Slot as S on CS.SlotId = S.slotId\n"
                    + "                 left join [Group_Course] as GC on CS.TeachingScheduleId = GC.TeachingScheduleId\n"
                    + "				 left join Groups as G on G.GroupId = GC.GroupId\n"
                    + "                  left join  [Subject] as Sj on CS.subjectId = Sj.subjectId                   \n"
                    + "				  left join Lecture as L on L.lectureId = G.LectureId\n"
                    + "                  where StudentId = ? and Sj.subjectCode = ?\n"
                    + "				";
            PreparedStatement stm = connection.prepareStatement(sql);

            stm.setInt(1, studentId);
            stm.setString(2, subjectCode);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Attendance a = new Attendance(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getString(9)
                );

                attList.add(a);

            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return attList;
    }

    public ArrayList<Course> getListSessionDate(int subjectId, int groupId, int lectureId) {
        ArrayList<Course> list = new ArrayList<>();
        try {
            String sql = "select distinct CS.TeachingScheduleId, CS.SessionDate, Sl.slotName from CourseSchedule as CS \n"
                    + "join Group_Course as GC on GC.TeachingScheduleId = CS.TeachingScheduleId\n"
                    + "join Groups as G on G.GroupId = GC.GroupId\n"
                    + "join [Subject] as S on S.subjectId = CS.subjectId\n"
                    + "join Slot as Sl on Sl.slotId = CS.SlotId\n"
                    + "where G.GroupId=? and S.subjectId=? and G.LectureId=?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, subjectId);
            stm.setInt(2, groupId);
            stm.setInt(3, lectureId);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Course c = new Course(
                        rs.getInt(1),
                        rs.getDate(2),
                        rs.getString(3)
                );
                list.add(c);
            }
            return list;

        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static void main(String[] args) {
        AttendanceDBContext dao = new AttendanceDBContext();
        ArrayList<Attendance> a = dao.getAllAttendanceBySubjectCode(1, "DBI202");
        for (Attendance attendance : a) {
            System.out.println(attendance);
        }
    }
}
