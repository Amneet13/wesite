<%-- 
    Document   : Services
    Created on : 6-Mar-2017, 5:45:43 PM
    Author     : Bector
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.FileReader"%>
<%@page import="au.com.bytecode.opencsv.CSVReader"%>
<%@page import="au.com.bytecode.opencsv.CSVReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
        <style>
            .mySlide{display:none;}
            .w3-left, .w3-right, .w3-badge {cursor:pointer}
            .w3-badge {height:13px;width:13px;padding:0}     
        </style>
        
    </head>
    <body>
        <div class="main" style="border:solid;">
          
            <header class="w3-card-4 w3-top" style="border:solid; background:darkblue; opacity: 0.7">   
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
                            <li><a href="booking.jsp"><button type="button" class="btn btn-primary fa fa-home w3-large"> Booking </button></a></li>
                            <li><a href="Services.jsp"><button type="button" class="btn btn-primary fa fa-home w3-large"> Service and Pricing </button></a></li>
                            <li><a href="about.html"><button type="button" class="btn btn-primary fa fa-phone w3-large w3-large"> Contact </button></a></li>   
                        </ul>
                    </div>
                </nav>
            </header>
    <div style="clear:inherit;">
                <div class="w3-content w3-display-container" style="max-width:100%; max-height:300px; margin-top: 67px;">
                    <div class="mySlides w3-animate-fading w3-hover-sepia" style="margin: 0px auto; text-align:center;">
                        <img src="1.jpg" style="width:100%; height:300px;">
                        <div class="w3-display-left w3-large w3-container w3-padding-16 w3-black">HALIFAX</div>
                    </div>
                    <div class="mySlides w3-animate-fading w3-hover-sepia" style="margin: 0px auto; text-align:center;">
                        <img src="2.jpg" style="width:100%; height:300px;">
                        <div class="w3-display-left w3-large w3-container w3-padding-16 w3-black">HALIFAX</div>
                    </div>
                    <div class="mySlides w3-animate-fading w3-hover-sepia" style="margin: 0px auto; text-align:center;">
                        <img src="3.png" style="width:100%; height:300px;">
                        <div class="w3-display-left w3-large w3-container w3-padding-16 w3-black">HALIFAX</div>
                    </div>
                    <div class="mySlides w3-animate-fading w3-hover-sepia" style="margin: 0px auto; text-align:center;">
                        <img src="5.jpg" style="width:100%; height:300px;">
                        <div class="w3-display-left w3-large w3-container w3-padding-16 w3-black">HALIFAX</div>
                    </div>
                    <div class="mySlides w3-animate-fading w3-hover-sepia" style="margin: 0px auto; text-align:center;">
                        <img src="6.jpg" style="width:100%; height:300px;">
                        <div class="w3-display-left w3-large w3-container w3-padding-16 w3-black">HALIFAX</div>
                    </div>
                    <div class="mySlides w3-animate-fading w3-hover-sepia" style="margin: 0px auto; text-align:center;">
                        <img src="3.png" style="width:100%; height:300px;">
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
    <center>
        <div class="w3-container" style="height:500px;width:800px;border:solid; text-align:center;margin-top: 10px">    
        
            <div class="w3-container" style="height:450px; width:350px; overflow:auto; float:left">
                    <h2>Long Distance Rates</h2>
                    <input class="w3-input w3-border w3-padding" type="text"  placeholder="Search for names.." id="myInput" onkeyup="myRates()">
                    <table class="w3-table-all w3-margin-top" id="myTable">
                      <tr>
                        <th style="width:40%;">Destination</th>
                        <th style="width:40%;">Exit</th>
                        <th style="width:20%;">Rate</th>
                      </tr>
                    <% 
                        String csvFile = "D:/NetBeansProjects/wesite/web/Rates.csv";
                        CSVReader reader = null;
                        try {
                            reader = new CSVReader(new FileReader(csvFile));
                            String[] line;
                            while ((line = reader.readNext()) != null) {
                                out.print("<tr>"
                                        + "<td>" + line[0] + "</td>"
                                        + "<td>" + line[1] + "</td>"
                                        + "<td>" + line[2] + "</td>"
                                    + "</tr>");
                            }
                        } catch (IOException e) {
                            e.printStackTrace();
                        } 
                    %>
                    </table>
                  </div>
                    
             <div class="w3-container" style="height:450px; width:350px; overflow:auto; float:right">
                    <h2>Local Airport Rates</h2>
                    <input class="w3-input w3-border w3-padding" type="text"  placeholder="Search for names.." id="myInput" onkeyup="myRates()">
                    <table class="w3-table-all w3-margin-top" id="myTable">
                      <tr>
                        <th style="width:60%;">Name</th>
                        <th style="width:40%;">R</th>
                      </tr>
                    <% 
                        csvFile = "D:/NetBeansProjects/wesite/web/Rates.csv";
                        
                        try {
                            reader = new CSVReader(new FileReader(csvFile));
                            String[] line;
                            while ((line = reader.readNext()) != null) {
                                out.print("<tr>"
                                        + "<td>" + line[0] + "</td>"
                                        + "<td>" + line[1] + "</td>"
                                    + "</tr>");
                            }
                        } catch (IOException e) {
                            e.printStackTrace();
                        } 
                    %>
                    </table>
                  </div>
                    
        </div>
    </center>
        </div>
<script>
        function myRates() 
        {
            var input, filter, table, tr, td, i;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) 
            {
                td = tr[i].getElementsByTagName("td")[0];
                if (td) 
                    {
                        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) 
                        {
                          tr[i].style.display = "";
                        } 
                        else {
                          tr[i].style.display = "none";
                    }
              }
            }
        }

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
      if (n > x.length) {slideIndex = 1;}    
      if (n < 1) {slideIndex = x.length;}
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
            if (myIndex > x.length) {myIndex = 1;}    
            x[myIndex-1].style.display = "block";  
            setTimeout(carousel, 10000); // Change image every 2 seconds
    }
    
</script>
    </body>
</html>
