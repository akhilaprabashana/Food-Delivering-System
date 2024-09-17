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

            <%
            String id = request.getParameter("rid");
            String name = request.getParameter("name");
            String rate = request.getParameter("rate");
            String loca = request.getParameter("loc");
            String cont = request.getParameter("con");
        %>
    <center>
    <div class="mid">
    <form method="post" action="drest">
        <label for="rid" id="t1">Restaurant ID</label><br>
        <input type="text" name="rid" value="<%= id%>" readonly id="col"><br><br>
        <label for="rest" id="t1">Restaurent name</label><br>
        <input type="text" name="rest" value="<%= name%>" readonly id="col"><br><br>
        <label for="rate" id="t1">Ratings</label><br>
        <input type="text" name="rate" value="<%= rate%>" readonly id="col"><br><br>
        <label for="loc" id="t1">Location</label><br>
        <input type="text" name="loc" value="<%= loca%>" readonly id="col"><br><br>
        <label for="contact" id="t1">Contact</label><br>
        <input type="text" name="contact" value="<%= cont%>" readonly id="col"><br><br>
        <label id="t1">Are you sure want to delete this ?</label><br><br>
        <input type="submit" value="Delete" id="btn1">
        </form>
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