<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.personal.model.StudentProfile" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Your Profile</title>
   <style>
       body {
           font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
           background: #f7f7f7;
           margin: 0;
           padding: 0;
           display: flex;
           justify-content: center;
           align-items: center;
           min-height: 100vh;
       }

       .profile-card {
           background-color: #fff;
           padding: 40px 30px;
           border-radius: 20px;
           box-shadow: 0 10px 30px rgba(0,0,0,0.1);
           max-width: 500px;
           width: 100%;
           transition: transform 0.3s, box-shadow 0.3s;
       }

       .profile-card:hover {
           transform: translateY(-5px);
           box-shadow: 0 15px 40px rgba(0,0,0,0.2);
       }

       h2 {
           text-align: center;
           background: linear-gradient(90deg, #6a11cb, #2575fc);
           -webkit-background-clip: text;
           -webkit-text-fill-color: transparent;
           font-size: 28px;
           margin-bottom: 25px;
       }

       p {
           font-size: 16px;
           color: #555;
           margin: 10px 0;
       }

       p strong {
           color: #222;
       }

       .hobby-badge {
           display: inline-block;
           background-color: #f0f4ff;
           color: #2575fc;
           padding: 5px 12px;
           border-radius: 20px;
           margin: 5px 5px 5px 0;
           font-size: 14px;
           font-weight: 500;
           transition: background-color 0.3s, color 0.3s;
       }
        .info-box {
            border: 2px solid #2575fc;
            border-radius: 15px;
            padding: 15px 20px;
            margin-bottom: 15px;
            background-color: #f5f7ff;
        }
       .hobby-badge:hover {
           background-color: #2575fc;
           color: #fff;
           cursor: default;
       }

       .about-me {
           background-color: #f9f9f9;
           padding: 15px 20px;
           border-radius: 15px;
           margin-top: 15px;
           box-shadow: inset 0 2px 5px rgba(0,0,0,0.05);
       }

       @media (max-width: 600px) {
           .profile-card {
               padding: 25px 20px;
               margin: 10px;
           }
           p {
               font-size: 14px;
           }
           .hobby-badge {
               font-size: 12px;
               padding: 4px 10px;
           }
       }
       
       .info-box table {
            width: 100%;
            border-collapse: collapse;
        }

        .info-box td {
            padding: 8px 10px;
            vertical-align: top;
        }

        .info-box td:first-child {
            font-weight: bold;
            width: 20%;
        }

        .info-box td:nth-child(2) {
            width: 5%;
            font-weight: bold;
            text-align: center;
        }

        .info-box td:last-child {
            width: 60%;
        }
   </style>
</head>
<body>
   <div class="profile-card">
       <h2>Your Profile Summary</h2>

       <c:if test="${not empty profile}">
            <div class="info-box">
                <table>
                    <tr>
                        <td><strong>Name</strong></td>
                        <td>:</td>
                        <td>${profile.name}</td>
                    </tr>
                    <tr>
                        <td><strong>Student ID</strong></td>
                        <td>:</td>
                        <td>${profile.studentId}</td>
                    </tr>
                    <tr>
                        <td><strong>Program</strong></td>
                        <td>:</td>
                        <td>${profile.program}</td>
                    </tr>
                    <tr>
                        <td><strong>Email</strong></td>
                        <td>:</td>
                        <td>${profile.email}</td>
                    </tr>
                </table>
            </div>
                    
            <p><strong>About Me:</strong></p>
            <div class="about-me">
                ${profile.introduction}
            </div>

            <p><strong>Hobbies:</strong></p>
            <div>
                <c:forEach var="h" items="${profile.hobby}">
                    <span class="hobby-badge">${h}</span>
                </c:forEach>
            </div>
        </c:if>
   </div>
</body>
</html>
