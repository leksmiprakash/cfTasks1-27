<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="./css/bootstrap.min.css" rel="stylesheet" >
        <script src="./js/validation.js"></script>
        <script>
            function formSubmitFn(){
                let fnValue = document.forms['main_form']['inputValue'].value;
                if (isNaN(fnValue)) {
                    alert("Enter a numeric value");
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <form name="mainForm" action="" method="post" onsubmit="return formSubmitFn()">
                    <div class="form-group col-md-4">
                        <label>Input Value</label>
                        <input type="text" name="inputValue" class="form-control" />
                    </div><br>
                    <div class="form-group col-md-4"> 
                        <label></label> 
                        <input type="submit" class="btn btn-success"  value="submit" name="formSubmit" />
                    </div> 
                </form>
            </div>
            <cfif structKeyExists(form, "formSubmit")>
                <cfinvoke component="components.task17"  method="checkQuery" returnvariable="result">
                <cfoutput>#result#</cfoutput>
            </cfif> 
        </div>
    </body> 
</html>	