
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
            <div class="row">
                <cfinvoke component="components.task25"  method="selectQuery" returnvariable="process">
                <table class="table table-bordered">
                    <cfoutput query="process">
                        <tr>
                            <td>
                                #Word#(#Frequency#)
                            </td>
                        </tr>
                    </cfoutput>
                </table>   
            </div>
        </div>
    </body> 
</html>