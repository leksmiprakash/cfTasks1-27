
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
                <h2>Wish Birthday</h2> 
                <cfparam name="Form.fileUpload" default="">
                <form action="task21.cfm" name="form" method="post" enctype="multipart/form-data" > 
                <div class="form-group col-md-4">
                    <label>Baby Name</label>
                    <input type="text" name="bName" class="form-control"> 
                </div><br>
                
                <div class="form-group col-md-4">
                    <label>Baby Email</label>
                    <input type="email" name="bEmail" class="form-control"> 
                </div><br>
                <div class="form-group col-md-4">
                    <label>Birthday Wish Email</label>
                    <textarea name="bWish" class="form-control"> </textarea>
                </div><br>
                <div class="form-group col-md-4">
                    <label>Image Upload:</label> 
                    <input type="file" class="form-control" name="fileUpload"> 
                </div>  <br>
                <div class="form-group col-md-4"> 
                    <label></label> 
                    <input type="Submit" class="btn btn-success" value="Submit" name="formSubmit">
                </div> 
                </form> 
            </div>
            <cfif StructKeyExists(Form,'formSubmit')>
                <cfinvoke component="components.task21"  method="checkQuery" returnvariable="result">
                <cfoutput>
                    <p> We have just sent you an email.</p>
                </cfoutput>
            </cfif>
        </div>
    </body> 
</html>