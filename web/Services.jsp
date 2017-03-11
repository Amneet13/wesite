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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <div class="w3-container" style="height:300px; width:300px; overflow:auto">
                    <h2>Filter Table</h2>
                    <p>Search for a name in the input field.</p>
                    <input class="w3-input w3-border w3-padding" type="text"  placeholder="Search for names.." id="myInput" onkeyup="myRates()">
                    <table class="w3-table-all w3-margin-top" id="myTable">
                      <tr>
                        <th style="width:60%;">Name</th>
                        <th style="width:40%;">R</th>
                      </tr>
                    <% 
                        String csvFile = "/Users/Bector/NetBeansProjects/TAXI/web/Rates.csv";
                        CSVReader reader = null;
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
</script>   
    </body>
</html>
