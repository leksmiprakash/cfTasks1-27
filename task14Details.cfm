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
                <cfoutput>
                    <cfif  structKeyExists(form,"viewdata") >  
                        <div align="center">
                            <h1>DETAILS</h1>
                            <img src="./#form.im#"/>
                            <h1>Image Name:#form.in#</h1>
                            <p>Image Description: #form.ids#</p>
                        </div>   
                    </cfif> 
                </cfoutput>
            </div> 
        </div> 
    </body> 
</html>