<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <script src="./js/jquery-3.6.0.min.js"></script>
</head>
    <body>
        <div class="container">
            <form  name="form_data" action="" method="post" enctype="multipart/form-data">
                <div class="form-group">
                   <label> Description: </label>  
                    <textarea name="name" class="form-control" required></textarea><br />
                    <input class="btn btn-success" type="submit" value="submit" name="form_submit"  />
                </div>
            </form>
            <cfif IsDefined("form.form_submit")>
                <cfinvoke component="components.task25" method="Insert" returnvariable="process" data="#form.name#" >
                <cfif process eq true>
                    <cfoutput>
                        success
                    </cfoutput>
                    <cfelse>
                    <cfoutput>
                        do not maintain the criteria
                    </cfoutput>
                </cfif>     
            </cfif>
            <br><button class="btn btn-light"><a href="task25-1.cfm">View datas</a></button>
            <button class="btn btn-light"><a href="task25-2.cfm">View datas with style</a></button>
        </div>
    </body>
</html>

