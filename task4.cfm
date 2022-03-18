<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="./css/bootstrap.min.css" rel="stylesheet">
        <script src="./js/validation.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h5>Dates</h5>
                <div class="col-md-5">
                    <table class="table table-bordered">
                        <tr>
                            <td>Today</td> 
                            <td><cfoutput> #DateFormat(Now(), "dd-mmmm-yyyy-dddd")# </cfoutput></td> 
                        <tr>
                        <tr>
                            <td>Current Month In Numeric</td> 
                            <td><cfoutput> #DateFormat(Now(), "mm")# </cfoutput></td> 
                        <tr>
                        <tr>
                            <td>Current Month In Word</td> 
                            <td><cfoutput> #DateFormat(Now(), "mmmmm")# </cfoutput></td> 
                        <tr>
                        <tr>
                            <td>Last Friday Date</td> 
                            <td>
                                <cfinvoke component="components.task4"  method="lastFriday" returnvariable="obj">
                                <cfoutput>#DateFormat(obj.mostRecentFriday,"dd-mmmm-yyyy")#</cfoutput>
                            </td> 
                        <tr>
                        <tr>
                            <td>Last day of month </td> 
                            <td>
                                <cfset dtThisMonth = CreateDate( Year( Now() ), Month( Now() ), 1 )/>
                                <cfset dtLastDay = (DateAdd("m", 1, dtThisMonth ) - 1 )/>
                                <cfoutput> #DateFormat(dtLastDay, "dd-mmmm-yyyy-dddd" )# </cfoutput>
                            </td> 
                        <tr>
                        <tr>
                            <td>Show Last 5 days date & day</td> 
                            <td>
                                <cfinvoke component="components.task4"  method="lastDays" returnvariable="Variables">
                                <cfoutput>
                                    <h5>Last 5 days</h5> 
                                    <p style="color:black;">#Variables.lastDay# -  #DateFormat(Variables.lastDay,"dddd")#</p> </b>
                                    <p style="color:yellow;">#Variables.lastDay2# -  #DateFormat(Variables.lastDay2,"dddd")#</p>
                                    <p style="color:orange;"> #Variables.lastDay3# -  #DateFormat(Variables.lastDay3,"dddd")#</p>
                                    <p style="color:green;"> #Variables.lastDay4# -  #DateFormat(Variables.lastDay4,"dddd")#</p>
                                    <p style="color:red;"> #Variables.lastDay5# -  #DateFormat(Variables.lastDay5,"dddd")#</p><br>
                                </cfoutput>
                            </td> 
                        <tr>
                    </table>
                </div>
            </div>   
        </div>
    </body> 
</html>
 
   