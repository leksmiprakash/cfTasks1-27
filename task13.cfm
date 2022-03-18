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
                <h2>Search Data</h2> 
                <cfoutput><p>The text for search is : "the quick brown fox jumps over the lazy dog" </p></cfoutput>
                <form action="task13.cfm" name="form" method="post" enctype="multipart/form-data" > 
                <div class="form-group col-md-4">
                    <label>Search Keyword</label>
                    <input type="text" name="inputValue" class="form-control"> 
                </div><br>
                <div class="form-group col-md-4"> 
                    <label></label> 
                    <input type="Submit" class="btn btn-success" value="Submit" name="formSubmit">
                </div> 
                </form> 
            </div>
            <cfif StructKeyExists(Form,'formSubmit')>
                <cfinvoke component="components.task12"  method="getQuery" returnvariable="result">
                <cfoutput>
                    <p>Found the key word in #result.occurrences# times</p>
                    #replaceNoCase(result.myText,result.myWord,"<span style='background:yellow'>#result.myWord#</span>","all")#
                </cfoutput>
            </cfif>
        </div>
    </body> 
</html>
