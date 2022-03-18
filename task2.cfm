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
                <cfparam name="inputValue" default="">
                <form action="task2.cfm" name="form" method="post" enctype="multipart/form-data" > 
                    <div class="form-group col-md-4">
                        <label>Input Value</label>
                        <input type="text" name="inputValue" class="form-control" validate="regex" pattern="[1-4]|5" message="Please enter only integers from 1-5!" validateAt="onSubmit"> 
                    </div><br>
                    <div class="form-group col-md-4"> 
                        <label></label> 
                        <input type="Submit" class="btn btn-success" value="Submit" name="formSubmit">
                    </div> 
                </form> 
            </div>
            <cfif StructKeyExists(Form,'formSubmit')>
                <cfinvoke component="components.task2"  method="checkQuery" returnvariable="result">
                <cfoutput>
                    <h6> Result : #result#  </h6>
                </cfoutput>
            </cfif>
        </div>
    </body> 
</html>











