 <cfscript> 
    function mulitiply(Arg1,Arg2) { 
        var arg_count = ArrayLen(Arguments); 
        var sum = 1; 
        var i = 0; 
        for( i = 1 ; i LTE arg_count; i = i + 1 ) 
        { 
            sum = sum * Arguments[i]; 
        } 
        return sum; 
    }
</cfscript> 

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
                <div class="col-md-5"><br>
                    <table class="table table-bordered">
                        <tr>
                            <cfset res = mulitiply(1,2)>
                            <td>Result of multiplication of 1,2</td> 
                            <td><cfoutput> #res# </cfoutput></td> 
                        <tr>
                        <tr>
                            <cfset res = mulitiply(1,2,3)>
                            <td>Result of multiplication of 1,2,3</td> 
                            <td><cfoutput> #res# </cfoutput></td> 
                        <tr>
                        <tr>
                            <cfset res = mulitiply(1,2,3,4)>
                            <td>Result of multiplication of 1,2,3,4</td> 
                            <td><cfoutput> #res# </cfoutput></td> 
                        <tr>
                    </table>
                </div>
            </div>
        </div>
    </body> 
</html>
