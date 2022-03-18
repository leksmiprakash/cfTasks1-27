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
                <form action="task6.cfm" name="form" method="post" enctype="multipart/form-data" > 
                    <div class="form-group col-md-4">
                        <label>Struct Key</label>
                        <input type="text" name="inputKey" class="form-control" message="Please enter only integers from 1-5!" validateAt="onSubmit"> 
                    </div><br>
                    <div class="form-group col-md-4">
                        <label>Struct Value</label>
                        <input type="text" name="inputValue" class="form-control" message="Please enter only integers from 1-5!" validateAt="onSubmit"> 
                    </div><br>
                    <div class="form-group col-md-4"> 
                        <label></label> 
                        <input type="Submit" class="btn btn-success" value="Submit" name="formSubmit">
                    </div> 
                </form> 
            </div><br>
            <h5>Result : </h5>
            <cfif StructKeyExists(Form,'formSubmit')>
                <cfinvoke component="components.task6"  method="checkQuery" returnvariable="result">
                <cfdump var = "#result#">
            </cfif>
        </div>
    </body> 
</html>
