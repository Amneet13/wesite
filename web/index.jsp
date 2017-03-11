<%@page import="org.hibernate.validator.constraints.Email"%>
<%@page import="au.com.bytecode.opencsv.CSVReader"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.IOException"%>

<%@ page import="Website.JavaEmail"%>
<%@ page import="javax.mail.MessagingException;"%>
        <%
	String message = null;
	String status = null;
	if (request.getParameter("submit") != null) {
		JavaEmail javaEmail = new JavaEmail();
		javaEmail.setMailServerProperties();
		String emailSubject = "TAXI---Need a Ride";
		String emailBody = "";
                
                if (request.getParameter("name") != null) {
                        
			emailBody = "<h3> Customer Info </h3>"+"<br>"+"<b></t> Sender Name: </b>" + request.getParameter("name")
					+ "<br>";
		}
		if (request.getParameter("e-mail") != null) {
			emailBody = emailBody + "<b> </t> Sender Email: </b>" + request.getParameter("e-mail") + "<br>";
		}
		if (request.getParameter("number") != null) {
			emailBody = emailBody + "<b> </t> Sender Phone:</b>"
					+ request.getParameter("number") + "<br>";
		}
                emailBody=emailBody+"<h3> Pick-Up Info </h3>"+"</br>";
                
                if (request.getParameter("Address") != null) {
			emailBody = emailBody + "<b> </t> Address: </b>" + request.getParameter("Address")
					+ "<br>";
		}
                if (request.getParameter("Date") != null) {
			emailBody = emailBody + "<b> </t>Date and Time </b>" + request.getParameter("Date")
					+ "<br>";
		}
                
                if (request.getParameter("people") != null) {
			emailBody = emailBody + "<b> </t>Number of Passenger </b>" + request.getParameter("people")
					+ "<br>";
		}
                
                
                if (request.getParameter("message") != null) {
			emailBody = emailBody + "<b></t> Message: </b>" + "<i>"+ request.getParameter("message") + "</i>"
					+ "<br>";
		}
		javaEmail.createEmailMessage(emailSubject, emailBody);
		try {
			javaEmail.sendEmail();
			status = "success";
			message = "Thank you "+ request.getParameter("name") +" for choosing Expert Taxi";
                        
                      
		
                } catch (MessagingException me) {
                        status = "error";
			message = me +"Error in Sending Email!";
		}
	}
%>



<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Expert Taxi</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        
        <style>
            .mySlides{display:none;}
            .menu li
            {
                display: inline-block;
                list-style-type: none;
                padding-right: 40px;
                margin-top: 30px;
                float:left;
            }
            .menu a{text-decoration: none;} 
            #bookingForm{display:none;} 
            .w3-left, .w3-right, .w3-badge {cursor:pointer}
            .w3-badge {height:13px;width:13px;padding:0}
            .topleft {
                position: absolute;
                top: 8px;
                left: 16px;
                font-size: 18px;
                color:red;
                font:bolder;
                }
                .div-background{
                 background-image: url(Picture1.png); 
                 background-repeat: no-repeat;
                 background-size:100% 100%; 
            
            }
         
        </style>
        <style>
            .form-background{
                 background-image: url(back.png); 
                 background-repeat: no-repeat;
                 background-size:100%;      
            }
            
            .form-style-5{
                max-width: 500px;
                padding: 10px 20px;
                background: #f4f7f8;
                margin: 10px auto;
                padding: 20px;
                background: rgba(20, 159, 206, 0.4);
                border-radius: 8px;
                font-family: Georgia, "Times New Roman", Times, serif;
            }
            .form-style-5 fieldset{
                border: none;
            }
            .form-style-5 legend {
                font-size: 1.4em;
                margin-bottom: 10px;
            }
            .form-style-5 label {
                display: block;
                margin-bottom: 8px;
            }
            .form-style-5 input[type="text"],
            .form-style-5 input[type="email"],
            .form-style-5 input[type="datetime-local"],
            .form-style-5 input[type="tel"],
            .form-style-5 textarea,
            .form-style-5 select {
                font-family: Georgia, "Times New Roman", Times, serif;
                background: rgba(255,255,255,.1);
                border: none;
                border-radius: 4px;
                font-size: 16px;
                margin: 0;
                outline: 0;
                padding: 7px;
                width: 100%;
                box-sizing: border-box; 
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box; 
                background-color: #e8eeef;
                color:#8a97a0;
                -webkit-box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
                box-shadow: 0 1px 0 rgba(0,0,0,0.03) inset;
                margin-bottom: 30px;

            }
            .form-style-5 input[type="text"]:focus,
            .form-style-5 input[type="email"]:focus,
            .form-style-5 input[type="datetime-local"]:focus,
            .form-style-5 input[type="tel"]:focus,
            .form-style-5 textarea:focus,
            .form-style-5 select:focus{
                background: #d2d9dd;
            }
            .form-style-5 select{
                -webkit-appearance: menulist-button;
                height:35px;
            }
            .form-style-5 .number {
                background: #1abc9c;
                color: #fff;
                height: 30px;
                width: 30px;
                display: inline-block;
                font-size: 0.8em;
                margin-right: 4px;
                line-height: 30px;
                text-align: center;
                text-shadow: 0 1px 0 rgba(255,255,255,0.2);
                border-radius: 15px 15px 15px 0px;
            }

            .form-style-5 input[type="submit"],
            .form-style-5 input[type="button"]
            {
                position: relative;
                display: block;
                padding: 19px 39px 18px 39px;
                color: #FFF;
                margin: 0 auto;
                background: #1abc9c;
                font-size: 18px;
                text-align: center;
                font-style: normal;
                width: 100%;
                border: 1px solid #16a085;
                border-width: 1px 1px 3px;
                margin-bottom: 10px;
            }
            .form-style-5 input[type="submit"]:hover,
            .form-style-5 input[type="button"]:hover
            {
                background: #109177;
            }
        </style>
    </head>
    <body>
        <div class="main" style="border:solid;">
          
            <header class="w3-card-4 w3-top" style="border:solid; background:black; opacity: 0.7">   
                <nav class="horizontal navbar-inverse">
                    <div class="navbar-header">
                     <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                       <span class="icon-bar"></span>
                       <span class="icon-bar"></span>
                       <span class="icon-bar"></span>                        
                    </button>
                    <div><a href="index.jsp"><img src="Logo.png" width=250px height=72px></a></div>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar" style="float:right">
                        <ul class="nav navbar-nav">							
                            <li><a href="index.jsp"><button type="button" class="btn btn-danger fa fa-home w3-large"> HOME </button> </a></li>
                            <li><a href="about.html"><button type="button" class="btn btn-primary fa fa-home w3-large"> Booking </button></a></li>
                            <li><a href="Services.jsp"><button type="button" class="btn btn-primary fa fa-home w3-large"> Service and Pricing </button></a></li>
                            <li><a href="about.html"><button type="button" class="btn btn-primary fa fa-phone w3-large w3-large"> Contact </button></a></li>   
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- <div class="w3-card-4"><img src="Logo.png" style="width:140px; height:71px;"></a</div> -->
            
            <div style="border:solid; clear:inherit">
                <div class="w3-content w3-display-container" style="max-width:100%; max-height:570px; margin-top: 67px;">
                    <div class="mySlides w3-animate-fading w3-hover-sepia" style="margin: 0px auto; text-align:center;">
                        <img src="1.jpg" style="width:100%; height:570px;">
                        <div class="w3-display-left w3-large w3-container w3-padding-16 w3-black">HALIFAX</div>
                    </div>
                    <div class="mySlides w3-animate-fading w3-hover-sepia" style="margin: 0px auto; text-align:center;">
                        <img src="2.jpg" style="width:100%; height:570px;">
                        <div class="w3-display-left w3-large w3-container w3-padding-16 w3-black">HALIFAX</div>
                    </div>
                    <div class="mySlides w3-animate-fading w3-hover-sepia" style="margin: 0px auto; text-align:center;">
                        <img src="3.png" style="width:100%; height:570px;">
                        <div class="w3-display-left w3-large w3-container w3-padding-16 w3-black">HALIFAX</div>
                    </div>
                    <div class="mySlides w3-animate-fading w3-hover-sepia" style="margin: 0px auto; text-align:center;">
                        <img src="5.jpg" style="width:100%; height:570px;">
                        <div class="w3-display-left w3-large w3-container w3-padding-16 w3-black">HALIFAX</div>
                    </div>
                    <div class="mySlides w3-animate-fading w3-hover-sepia" style="margin: 0px auto; text-align:center;">
                        <img src="6.jpg" style="width:100%; height:570px;">
                        <div class="w3-display-left w3-large w3-container w3-padding-16 w3-black">HALIFAX</div>
                    </div>
                    <div class="mySlides w3-animate-fading w3-hover-sepia" style="margin: 0px auto; text-align:center;">
                        <img src="3.png" style="width:100%; height:570px;">
                        <div class="w3-display-left w3-large w3-container w3-padding-16 w3-black">HALIFAX</div>
                    </div>
                    <div class="w3-center w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
                        <div class="w3-left w3-padding-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
                        <div class="w3-right w3-padding-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(4)"></span>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(5)"></span>
                        <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(6)"></span>
                    </div>
                </div>   
            </div>
            <div class="banner" style="border:solid; text-align: center;">
                <div class="moto w3-panel w3-card-4" style="display: inline-block; border:solid; overflow: scroll; margin-left:20px; float:left"> 
                <h1>welcome</h1>    
                </div>
                <div class="price w3-panel w3-card-4" style="display: inline-block; border:solid; overflow: scroll;">
                    <h1>welcome</h1>
                </div>
                <div class="style w3-panel w3-card-4" style="display: inline-block; border:solid; margin-right:20px; overflow: scroll; float:right">
                    <h1>bye</h1>
                </div>
            </div>
            
            <div class="w3-card-4 div-background" style="border:solid; text-align:center;">
                
                <div class="fa fa-taxi" style="display: inline-block; font-size:100px; color:#d9534f;"></div>
                <div style="display: inline-block;">
                <h1><button type="button" class="btn btn-danger w3-xlarge"><i class="fa fa-phone fa-spin"></i>+1 (999)-875-9909</button>
                    </h1>
                <h1><button type="button" class="btn btn-danger w3-xlarge" onclick="myFunction()">ONLINE BOOKING</button></h1><br>
           
                </div>
                <%
                    if (null != message) {
                    out.println("<div class=\"w3-display-right w3-large w3-container w3-padding-16 btn btn-success\">" + message + "</div>");
			}
                    %> 
                
            </div>
            <div id="bookingForm" class="form-background" style="border:solid; overflow: auto; text-align:center;">
                <div class="form-style-5" style="display: inline-block;">
                     <h1 class="w3-card-2" style="text-align:center">Book a Cab</h1>
                    <form method="Post">
                    <fieldset>
                    <legend><span class="number">1</span> Customer Info</legend>
                    <input type="text" name="name" placeholder="Your Name *" required>
                    <input type="email" name="e-mail" placeholder="Your Email *" required>
                    <input type="tel" name="number" pattern="^\d{10}$" placeholder="Your Phone Number *" required>  
                    </fieldset>
                    <fieldset>
                    <legend><span class="number">2</span> Pick-Up Info</legend>
                    <input type="text" name="Address" placeholder="Address *" required>
                    <label for="date-time" style="float:left">Pick-Up Date/time:</label>
                    <input type="datetime-local" name="Date" required>
                    <label for="number" style="float:left">Number of Passenger:</label>
                    <select>
                    <optgroup label="Adults" name="people">
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                    </select>
                    <textarea name="message" placeholder="Additional Info" style="overflow:auto"></textarea>
                    </fieldset>
                    <input type="submit" name="submit" value="Send Message" id="send-message"value="SUBMIT" />
                    </form>
                    
                    </div>
                </div>
                <div class="banner" style="border:solid; text-align: center; margin-bottom: 60px">
                <div class="moto w3-panel w3-card-4" style="display: inline-block; border:solid; overflow: scroll; margin-left:20px; float:left"> 
                <h1>welcome</h1>    
                </div>
                <div class="price w3-panel w3-card-4" style="display: inline-block; border:solid; overflow: scroll;">
                    <h1>welcome</h1>
                </div>
                <div class="style w3-panel w3-card-4" style="display: inline-block; border:solid; margin-right:20px; overflow: scroll; float:right">
                    <h1>bye</h1>
                </div>
            </div>   
            <footer class="w3-card-4 w3-bottom" style="border:solid; background:black; opacity: 0.7;" >
               <div><h3>Footer</h3></div> 
            </footer>
        </div>
<script>
    var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
      showDivs(slideIndex += n);
    }

    function currentDiv(n) {
      showDivs(slideIndex = n);
    }

    function showDivs(n) {
      var i;
      var x = document.getElementsByClassName("mySlides");
      var dots = document.getElementsByClassName("demo");
      if (n > x.length) {slideIndex = 1}    
      if (n < 1) {slideIndex = x.length}
      for (i = 0; i < x.length; i++) {
         x[i].style.display = "none";  
      }
      for (i = 0; i < dots.length; i++) {
         dots[i].className = dots[i].className.replace(" w3-white", "");
      }
      x[slideIndex-1].style.display = "block"; 
      dots[slideIndex-1].className += " w3-white";
    }
    
    var myIndex = 0;
    carousel();
    function carousel() {
        var i;
        var x = document.getElementsByClassName("mySlides");
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";  
         }
        myIndex++;
            if (myIndex > x.length) {myIndex = 1}    
            x[myIndex-1].style.display = "block";  
            setTimeout(carousel, 10000); // Change image every 2 seconds
    }
    
function myFunction() {
    var x = document.getElementById('bookingForm');
    if (x.style.display === 'block') {
        x.style.display = 'none';
    } else {
        x.style.display = 'block';
    }
}
</script>   
</body>
</html>

