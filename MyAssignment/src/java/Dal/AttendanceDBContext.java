/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Attendance;
import Model.AttendanceView;
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
public class AttendanceDBContext extends DBContext<Object>{
    
     public ArrayList<Attendance> getAllAttendanceBySubjectCode(int studentId, String subjectCode) {
        ArrayList<Attendance> attList = new ArrayList<>();
        try {
            String sql = "select Sj.subjectName,Sj.subjectCode, R.roomName,S.slotName, G.GroupCode, CS.SessionDate, L.lectureCode,RCB.IsAbsent,RCB.Comment\n" +
"                    from RollCallBook as RCB\n" +
"                   left join CourseSchedule as CS on RCB.TeachingScheduleId = CS.TeachingScheduleId\n" +
"                   left join Room as R on CS.RoomId = R.roomId\n" +
"                   left join Slot as S on CS.SlotId = S.slotId\n" +
"                   left join [Groups] as G on RCB.GroupId = G.GroupId\n" +
"                   left join  [Subject] as Sj on CS.subjectId = Sj.subjectId\n" +
"                   left join Lecture as L on L.lectureId = G.LectureId\n" +
"                   where StudentId = ? and Sj.subjectCode = ?";
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
    
}
