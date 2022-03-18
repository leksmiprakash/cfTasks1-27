
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
    </head>
    <body>
        <form  name="form_data" action="task26.cfm" method="post" enctype="multipart/form-data">
            File:    <input type="file" name="file"  required /> 
            <br />
            <input class="btn-submit" type="submit"  value="submit" name="formSubmit" />
        </form>
        <cfif IsDefined("form.formSubmit")>
            <cfinvoke component="components.task26"  method="insertDoc" returnvariable="process">
            </cfinvoke>   
            <cfoutput>Inserted</cfoutput>
        </cfif>
    </body>
</html>