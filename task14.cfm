<html>
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
            <form action="task14.cfm" method="post" enctype="multipart/form-data" > 
                <div class="form-group col-md-4">
                    <label>Image Name:</label> 
                    <input type="Text" class="form-control" name="flUserName" required> 
                </div>  
                <div class="form-group col-md-4">
                    <label>Image Description:</label> 
                    <textarea name="flUserDesc" class="form-control"  required></textarea> 
                </div>  
                <div class="form-group col-md-4">
                    <label>Image Upload:</label> 
                    <input type="file" class="form-control" name="flUserImage"> 
                </div>   <br>
                <div class="form-group col-md-4">
                    <label></label>
                    <input type="Submit" class="btn btn-primary" name="formSubmit" value="Submit">&nbsp;<input type="Reset" 
                value="Clear Form"> 
                </div>  
            </form> 
            <cfif structKeyExists(form,"formSubmit")>
                <cfinvoke component="task14" method="CreateImageThumb" returnvariable="result"></cfinvoke>
                <cfoutput>#result#</cfoutput>
            </cfif>   
            </div> 
        </div> 
    </body> 
</html>
