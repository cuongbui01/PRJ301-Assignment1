/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package Controller.Teacher;

import Dal.AttendanceDBContext;
import Dal.CourseDBContext;
import Dal.TeacherDBContext;
import Model.Attendance;
import Model.Lecture;
import Model.Student;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;

/**
 *
 * @author Cuong Bui
 */
public class TakeAttendance extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TakeAttendance</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TakeAttendance at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int teachingId = Integer.parseInt(request.getParameter("teachingId"));
        System.out.println("teaching " + teachingId);
        
        int teacherId = (int) request.getSession().getAttribute("teacherId");
        AttendanceDBContext takeAttendance = new AttendanceDBContext();
        ArrayList<Attendance> attendanceList = takeAttendance.getAllToTakeAttendance(teachingId);
        request.setAttribute("teacher", new TeacherDBContext().getTeacherById(teacherId));
        request.setAttribute("sessionCourse", new CourseDBContext().getCourseByTeachingId(teachingId));
        request.setAttribute("attendanceList", attendanceList);
        request.setAttribute("teachingId", teachingId);
         request.setAttribute("teacherId", teacherId);
        request.getRequestDispatcher("view/TakeAttendance.jsp").forward(request, response);
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int teachingId = Integer.parseInt(request.getParameter("teachingId"));
         int teacherId = (int) request.getSession().getAttribute("teacherId");
        System.out.println("teaching in post" + teachingId);
        AttendanceDBContext takeAttendance = new AttendanceDBContext();
        ArrayList<Attendance> attList = takeAttendance.getAllToTakeAttendance(teachingId);
        for (Attendance att : attList) {
                int check = Integer.parseInt(request.getParameter("check" + att.getStudent().getStudentId()));
                System.out.println("check" + check);
                String comment = request.getParameter("comment" + att.getStudent().getStudentId());
                takeAttendance.saveTakeAttendance(att.getStudent().getStudentId(), check, comment,teachingId);
                System.out.println("....................."+comment);
                System.out.println("check " + check);
            }
            request.setAttribute("mess", "Save attendance Success");
            request.setAttribute("teacher", new TeacherDBContext().getTeacherById(teacherId));
        request.setAttribute("sessionCourse", new CourseDBContext().getCourseByTeachingId(teachingId));
            request.setAttribute("attList", attList);

        request.getRequestDispatcher("view/TakeAttendance.jsp").forward(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
