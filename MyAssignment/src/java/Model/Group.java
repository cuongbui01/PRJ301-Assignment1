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
    private int gid;
    private String gname;
    private Subjects sub;


   ArrayList<Student> student = new ArrayList(); 

    
    
    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public Subjects getSub() {
        return sub;
    }

    public void setSub(Subjects sub) {
        this.sub = sub;
    }
    
    
    
    
}
