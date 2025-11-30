
package com.personal.model;

import java.util.List;

public class StudentProfile {
    private String name;
    private String studentId;
    private String program;
    private String email;
    private List<String> hobby;
    private String introduction;
    
    
    // Default constructor
    public StudentProfile() {}

    // Parameterized constructor
    public StudentProfile(String name, String studentId, String program, String email, List<String> hobby, String introduction) {
        this.name = name;
        this.studentId = studentId;
        this.program = program;
        this.email = email;
        this.hobby = hobby;
        this.introduction = introduction;
    }

    // Getters and Setters
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getProgram() {
        return program;
    }

    public void setProgram(String program) {
        this.program = program;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<String> getHobby() {
        return hobby;
    }

    public void setHobby(List<String> hobby) {
        this.hobby = hobby;
    }

    public String getIntroduction() {
        return introduction;
    }

    public void setIntroduction(String introduction) {
        this.introduction = introduction;
    }
}
