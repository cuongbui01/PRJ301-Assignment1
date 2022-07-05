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
public class Attendance {
     private int AttendId;
    private int TeachingScheduleId;
    private Students Student;
    private boolean IsAbsent;
    private String Comment;

    public Attendance() {
    }

    public Attendance(int attendId, int TeachingScheduleId, Students Student, boolean IsAbsent, String Comment) {
        this.AttendId = attendId;
        this.TeachingScheduleId = TeachingScheduleId;
        this.Student = Student;
        this.IsAbsent = IsAbsent;
        this.Comment = Comment;
    }

    

    public int getTeachingScheduleId() {
        return TeachingScheduleId;
    }

    public void setTeachingScheduleId(int TeachingScheduleId) {
        this.TeachingScheduleId = TeachingScheduleId;
    }

    public Students getStudent() {
        return Student;
    }

    public void setStudent(Students Student) {
        this.Student = Student;
    }


    public boolean isIsAbsent() {
        return IsAbsent;
    }

    public void setIsAbsent(boolean IsAbsent) {
        this.IsAbsent = IsAbsent;
    }

    public String getComment() {
        return Comment;
    }

    public void setComment(String Comment) {
        this.Comment = Comment;
    }
    
}
