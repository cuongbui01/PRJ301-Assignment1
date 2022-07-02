/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;

/**
 *
 * @author Cuong Bui
 */
public class TimeTable {
    private String subjectCode;
    private String groupName;
    private String slotName;
    private String roomName;
    private boolean status;
    private Date sessionDate;

    public TimeTable(String subjectCode, String groupName, String slotName, String roomName, boolean status, Date sessionDate) {
        this.subjectCode = subjectCode;
        this.groupName = groupName;
        this.slotName = slotName;
        this.roomName = roomName;
        this.status = status;
        this.sessionDate = sessionDate;
    }

    public TimeTable() {
    }
    

    public String getSubjectCode() {
        return subjectCode;
    }

    public void setSubjectCode(String subjectCode) {
        this.subjectCode = subjectCode;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getSlotName() {
        return slotName;
    }

    public void setSlotName(String slotName) {
        this.slotName = slotName;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Date getSessionDate() {
        return sessionDate;
    }

    public void setSessionDate(Date sessionDate) {
        this.sessionDate = sessionDate;
    }
    
    
    
}
