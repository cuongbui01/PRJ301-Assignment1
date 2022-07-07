/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dal;

import Model.Subject;
import Model.TimeTable;
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
public class TimeTableDBContext extends DBContext<TimeTable>{
    
public ArrayList<TimeTable> getsubjectInSlot(int slotId, int studentId) {
        ArrayList<TimeTable> table = new ArrayList<>();
        try {
            String sql = "SELECT S.subjectCode, G.groupName, Sl.SlotName, R.roomName,At.[status], Ss.sessionDate from [Group] as G \n" +
                                    "left join [GroupSubject] as GS on GS.groupId = G.groupId \n" +
                                    "left join [Subject] as S on S.subjectId = GS.subjectId \n" +
                                    "left join GroupSlot as GSl on GSl.groupId = G.groupId \n" +
                                    "left join [Slot] as Sl on Sl.slotId = GSl.slotId \n" +
                                    "left join GroupRoom as GR on GR.groupId = G.groupId \n" +
                                    "left join Room as R on R.roomId = GR.roomId \n" +
                                    "left join GroupSession as GSs on GSs.groupId = G.groupId \n" +
                                    "left join [Session] as Ss on GSs.sessionId = Ss.sessionId \n" +
                                    "left join AttendSession as AtS on AtS.sessionId = Ss.sessionId \n" +
                                    "left join Attendance as At on At.attendId = AtS.attendId \n" +
                                    "left join Enroll as E on E.studentId = G.groupId \n" +
                                    "where E.studentId = ? and sl.slotId = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, studentId);
            stm.setInt(2, slotId);
            ResultSet rs = stm.executeQuery();
            
            while (rs.next()) {
                TimeTable s = new TimeTable();
                s.setGroupName(rs.getString(1));
                s.setRoomName(rs.getString("roomName"));
                s.setStatus(rs.getBoolean("status"));
                s.setSessionDate(rs.getDate("sessionDate"));
                s.setSubjectCode(rs.getString("subjectCode"));
                s.setSlotName(rs.getString("SlotName"));
                

                table.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return table;

    }
    
}
