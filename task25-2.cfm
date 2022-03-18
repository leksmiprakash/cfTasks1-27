
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="./css/bootstrap.min.css" rel="stylesheet">
        <script src="./js/jquery-3.6.0.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row col-md-5">
                <cfinvoke component="components.task25"  method="selectQuery" returnvariable="process">
                <cfoutput query="process">
                    <cfif #Frequency# GTE 3>
                        <cfset style="color:green;font-size:25px;"> 
                     <cfelse>
                        <cfset style="color:orange;font-size:18px;" > 
                    </cfif>
                    <table class="table table-bordered">
                        <tr>
                            <td>
                                <span style="#style#">#Word#(#Frequency#) </span>
                            </td>
                        </tr>
                    </table>
                </cfoutput>
            </div>
        </div>
    </body> 
</html>