package com.personal.controller;

import com.personal.model.StudentProfile;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {

        String name = request.getParameter("name");
        String studentId = request.getParameter("studentId");
        String program = request.getParameter("program");
        String email = request.getParameter("email");


        String[] hobbyArray = request.getParameterValues("hobbies[]");
        List<String> hobbies = null;
        if (hobbyArray != null) {
            hobbies = Arrays.asList(hobbyArray);
        }

        String intro = request.getParameter("bio");

        StudentProfile profile = new StudentProfile(name,studentId,program,email,hobbies,intro);

        request.setAttribute("profile", profile);

        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
        response.sendRedirect("index.html");
    }
}

