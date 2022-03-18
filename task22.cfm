<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="./css/bootstrap.min.css" rel="stylesheet" >
        <script src="./js/validation.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-7">
                    <table class="table table-bordered">
                        <tr>
                            <td>Name</td>
                            <td>Age</td>
                            <td>Location</td>
                        </tr>
                        <cfoutput>
                        <cfinvoke component="components.task22"  method="checkQuery" returnvariable="jasonToTable">
                            <cfloop from="1" to="#arrayLen(jasonToTable)#" index="i">
                                <tr>   
                                    <td>#jasonToTable[i].Name#</td>
                                    <td>#jasonToTable[i].Age#</td>
                                    <td>#jasonToTable[i].LOCATION#</td>
                                </tr>                   
                            </cfloop>
                        </cfoutput>
                    </table>
                </div>
            </div>
        </div> 
    </body>
</html>