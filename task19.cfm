
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
                <h2>Insert Data</h2> 
                <form action="task19.cfm" name="form" method="post" enctype="multipart/form-data" > 
                <div class="form-group col-md-4"> 
                    <label></label> 
                    <input type="Submit" class="btn btn-success" value="Submit" name="formSubmit">
                </div> 
                </form> 
            </div>
             <cfif StructKeyExists(Form,'formSubmit')>
                <cfinvoke component="components.task19"  method="checkQuery" returnvariable="result">
                <cfoutput>#result#</cfoutput>
            </cfif>
        </div>
    </body> 
</html>