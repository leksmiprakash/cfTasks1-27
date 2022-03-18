<cfparam name="form.sdob" default="01/12/1996" type="string">
<cfparam name="form.mdob" default="29/12/1968" type="string">
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
                <h2>Insert Data</h2> 
                <form action="task5.cfm" name="form" method="post" enctype="multipart/form-data" > 
                    <div class="form-group col-md-4">
                        <label>Your Dob</label>
                        <input type="text" name="yourDob" class="form-control"/>
                    </div>
                    <div class="form-group col-md-4">
                        <label>Your Mother Dob</label>
                        <input type="text" name="motherDob" class="form-control"/>
                        <input type="submit" class="btn btn-primary" name="formSubmit" value="Submit"/>
                    </div>
                </form>
            <cfif structKeyExists(form,"formSubmit")>
                <cfinvoke component="components.task5" method="differenceAge" returnvariable="result"></cfinvoke>
                <cfoutput>     
                    Your Age : #result.yourAge#<br>
                    Mothers Age : #result.motherAge#<br>
                    Age at which your mother deliver you : #result.giveBirth#
                </cfoutput>  
            </cfif>
         
    </body>
</html>