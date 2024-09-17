<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
      <head>

        <title>ANDT Food Delivery</title> 
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> <!-- link font awesome cdn -->
        <link rel="stylesheet" href="index.css"> <!-- link css file  -->
    
    </head> 

    <body> 
        <header class="header"><!-- header section start  -->

            <div class="logo">
                <img src="img/1.png" alt="logo"> 
            </div>


            <nav class="navbar">
                <a href="#HOME">HOME</a> 
                <a href="#ABOUT US">ABOUT US</a>  
            </nav> <!--Close NAV-->


            <div class="profile"> 
                <div class="main_div">
                <a href="Home.jsp"><button>Log out</button></a>
                </div>
            </div>
    
        </header> <!-- header section close  -->
            <br> <br> <br> <br> <br> <br> <br>

            <div class="content">
                <div class="pro">
                  <div class="pro1">
                    <%@page import="java.sql.DriverManager" %>
                    <%@page import="java.sql.ResultSet" %>
                    <%@page import="java.sql.Statement" %>
                    <%@page import="java.sql.Connection" %>
                  
                    <%
                      
                    String id = request.getParameter("userId");
                    String url = "jdbc:mysql://localhost:3306/adminlogin";
                    String user = "root";
                    String pass = "akila123";
                  
                    try {
                      Class.forName("com.mysql.jdbc.Driver");
                    } catch (ClassNotFoundException e) {
                      e.printStackTrace();
                    }
                    %>
                        <center><h1 id="heading1">Restaurants</h1></center><br><br>
                      <table align="center" cellpadding="10" id="responsive-data-table"
                        class="table dt-responsive nowrap" style="width: 100%">
                  
                        <tr>
                  
                        </tr>
                        <tr>
                          <td id="t1"><b>Rest ID</b></td>
                          <td id="t1"><b>Name</b></td>
                          <td id="t1"><b>Ratings</b></td>
                          <td id="t1"><b>Location</b></td>
                          <td id="t1"><b>Contact</b></td>
                        </tr>
                        <%
                        try {
                          Class.forName("com.mysql.jdbc.Driver");
                  
                          Connection con = DriverManager.getConnection(url, user, pass);
                          Statement stmt = con.createStatement();
                          String sql = "select * from restaurant";
                  
                          ResultSet rs = stmt.executeQuery(sql);
                          while (rs.next()) {
                            String idx = rs.getString("rid");
                            String namex = rs.getString("name");
                            String ratex = rs.getString("ratings");
                            String locx = rs.getString("location");
                            String conx = rs.getString("contact");
                        %>
                        
                        <tr id="tb">
               
                          <td><%= idx%></td>
                          <td><%= namex%></td>
                          <td><%= ratex%></td>
                          <td><%= locx%></td>
                          <td><%= conx%></td>
                  
                          
                                  
                          <c:url value="updaterest.jsp" var="reupdate">
                          <c:param name="rid" value="<%= idx%>"/>
                          <c:param name="name" value="<%= namex%>"/>
                          <c:param name="rate" value="<%= ratex%>"/>
                          <c:param name="loc" value="<%= locx%>"/>
                          <c:param name="con" value="<%= conx%>"/>
                          </c:url>
                          
                          <c:url value="deleterest.jsp" var="redelete">
                          <c:param name="rid" value="<%= idx%>"/>
                          <c:param name="name" value="<%= namex%>"/>
                          <c:param name="rate" value="<%= ratex%>"/>
                          <c:param name="loc" value="<%= locx%>"/>
                          <c:param name="con" value="<%= conx%>"/>
                          </c:url>
                          
                          <td><a href="${reupdate}"><button id="btn1">Update</button></a></td>
                          <td><a href="${redelete}"><button id="btn1">Delete</button></a></td>
                  
                        </tr>
                        
                        
                  
                        <%
                        }
                  
                        } catch (Exception e) {
                        e.printStackTrace();
                        }
                        %>
                        
                        </table>
                      
                  </div>
              </div> 
            </div> 
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        <footer class="footer"><!-- footer section start  -->

            <div class="container">
                <div class="row">
                    <div class="footer-col">
                        <h4>company</h4>
                        <ul>
                            <li><a href="#">about us</a></li>
                            <li><a href="#">our services</a></li>
                            <li><a href="#">privacy policy</a></li>
                        </ul>
                    </div>

                    <div class="footer-col">
                        <h4>get help</h4>
                        <ul>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">shipping</a></li>
                            <li><a href="#">returns</a></li>
                            <li><a href="#">order status</a></li>
                            <li><a href="#">payment options</a></li>
                        </ul>
                    </div>

                    <div class="footer-col">
                        <h4>Short</h4>
                        <ul>
                            <li><a href="#">Restaurants</a></li>
                            <li><a href="#">Grocery</a></li>
                            <li><a href="#">Convenience</a></li>
                            <li><a href="#">Ride</a></li>
                         <li><a href="#">Baby</a></li>
                         <li><a href="#">Pet Supplies</a></li>
                        </ul>
                    </div>

                    <div class="footer-col">
                        <h4>follow us</h4>
                        <div class="social-links">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-linkedin-in"></i></a>
                        </div>

                    </div>

                </div>

            </div>

       </footer>

    </body>

</html>
