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
                <cfparam name="form.inputValue" default=""> 
                <form action="task3.cfm" name="form" method="post" enctype="multipart/form-data" > 
                <div class="form-group col-md-4">
                    <label>Input Value</label>
                    <input type="text" name="inputValue" class="form-control"  > 
                </div><br>
                <div class="form-group col-md-4"> 
                    <label></label> 
                    <input type="Submit" class="btn btn-success" value="Submit" name="formSubmit">
                </div> 
                </form> 
            </div>
            <cfif StructKeyExists(Form,'formSubmit')>
                <cfinvoke component="components.task3" method="checkQuery" returnvariable="result">
                <cfoutput>
                    <h5>Result : #result#</h5>
                </cfoutput>
            </cfif>
        </div>
    </body> 
</html>
