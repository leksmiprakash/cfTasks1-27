<cfinvoke component="components.task12"  method="selectQuery" returnvariable="process">
<html> 
     <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="./css/bootstrap.min.css" rel="stylesheet">
        <script src="./js/validation.js"></script>
    </head>
    <body> 
        <div class="container">
           <form action="task12.cfm" name="form" method="post" enctype="multipart/form-data" > 
                <div class="form-group col-md-4">
                    <label>Input Value</label>
                    <input type="text" name="inputValue" class="form-control" validate="regex" pattern="[1-9]|10" message="Please enter only integers from 1-10!" validateAt="onSubmit"> 
                </div><br>
                <div class="form-group col-md-4"> 
                    <label></label> 
                    <input type="Submit" class="btn btn-success" value="Submit" name="formSubmit">
                </div> 
            </form>  <br>
            <div class="col-md-5">            
                <table class="table table-bordered"> 
                    <tr> 
                        <td align="center">FirstName</td> 
                        <td align="center">LastName</td> 
                    </tr> 
                    <cfoutput query="process">
                        <tr>
                            <td>#FirstName#</td> 
                            <td>#LastName# </td>  
                        </tr> 
                    </cfoutput>
                </table>
            </div>
            
            <cfif StructKeyExists(Form,'formSubmit')>
                <cfset rowNo = #Form.inputValue#>
                <cfset result = QueryGetRow(process, rowNo)>
                <p><cfoutput>Result of row no #rowNo# :
                    #result.FirstName#&nbsp;#result.LastName#<br>
                </cfoutput></p>
            </cfif>
        </div>
    </body> 
</html>
