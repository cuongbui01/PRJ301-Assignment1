/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author Cuong Bui
 */
public class Group {
    private int groupId;
    private String groupName;
    
    private ArrayList<Student> studentList;

    public int getGroupId() {
        return groupId;
    }

    public Group() {
    }

    public Group(int groupId, String groupName, ArrayList<Student> studentList) {
        this.groupId = groupId;
        this.groupName = groupName;
        this.studentList = studentList;
    }

    public ArrayList<Student> getStudentList() {
        return studentList;
    }

    public void setStudentList(ArrayList<Student> studentList) {
        this.studentList = studentList;
    }

    public void setGroupId(int groupId) {
        this.groupId = groupId;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }
    
    
   
    
}
