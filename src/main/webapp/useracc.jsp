<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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

            <center>
                <div class="mid">
                <h1 id="heading1">welcome to Admin portal !!</h1><br><br>
                    
                    <c:forEach items="${customer}" var="cus">
                    
                    <c:set var="id" value="${cus.id}"/>
                    <c:set var="name" value="${cus.name}"/>
                    <c:set var="password" value="${cus.password}"/>
                    <c:set var="phone" value="${cus.phone}"/>
                    <c:set var="email" value="${cus.email}"/>	
                    
                    <h4 id="t1">Admin ID :  ${cus.id}</h4>
                    <h4 id="t1">Name :  ${cus.name}</h4>
                    <h4 id="t1">Password :  ${cus.password}</h4>
                    <h4 id="t1">Contact No :  ${cus.phone}</h4>
                    <h4 id="t1">Email :  ${cus.email}</h4>
                    
                    </c:forEach>
                    
                    <c:url value="update.jsp" var="cusupdate">
                        <c:param name="id" value="${id}"/>
                        <c:param name="name" value="${name}"/>
                        <c:param name="password" value="${password}"/>
                        <c:param name="phone" value="${phone}"/>
                        <c:param name="email" value="${email}"/>
                    </c:url>
                    <c:url value="delete.jsp" var="cusdelete">
                        <c:param name="id" value="${id}"/>
                        <c:param name="name" value="${name}"/>
                        <c:param name="password" value="${password}"/>
                        <c:param name="phone" value="${phone}"/>
                        <c:param name="email" value="${email}"/>
                    </c:url>
                    <br><br><br>
                    <a href="${cusupdate}">
                    <button id="btn2">Update</button>
                    </a>
                    <a href="${cusdelete}">
                    <button id="btn2">Delete</button>
                    </a>
                    <a href="insertrest.jsp"><button id="btn3">Restaurants</button></a> 
                </div>
                </center>
                <br><br><br><br><br><br><br>
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