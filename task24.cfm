
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="./css/bootstrap.min.css" rel="stylesheet" >
        <script src="./js/jquery-3.6.0.min.js"></script>
        <script>
            $(document).ready(function() {
                $(':input[type="submit"]').prop('disabled', true);
            });
        </script> 
        <script language="javascript" type="text/javascript">
            function checkEmail(){      
                var userEmail = $('#userEmail').val();
                $.ajax({
                url: 'components/subscribers.cfc', 
                async: false,
                data: 
                    { 
                        method: "getUser",
                        EmailId:userEmail},
                        success: function(data) {
                        console.log(data);
                            if(data) {  
                                alert('Email available');
                                $(':input[type="submit"]').prop('disabled', false);                    
                            } 
                            else {
                                alert('Email already exist');
                                
                            }                    
                        }
                }); 
            }
        </script> 
    </head>
    <body>  
        <div class="container"><br>
            <form name="form" method="post"> 
                <div class="col-md-5 form-group">
                    <label>Username</label>
                    <input type="name" id="userName" name="userName" class="form-control" /></br>
                </div>
                <div class="col-md-5 form-group">
                    <label>Email</label>
                    <input type="email" id="userEmail" name="userEmail" class="form-control" /></br> 
                </div> 
                <div class="col-md-5 form-group">   
                    <input name="formSubmit" class="btn btn-primary" type="submit">  
                </div>
                <div class="col-md-5 form-group">
                    <input type="button" name="Finalize" value="Check User Exist" class="btn btn-primary" onClick="checkEmail();"/>
                </div>
            </form>
            <cfif StructKeyExists(Form,'formSubmit')>       
                <cfinvoke component="components.task24"  method="insertQuery" returnvariable="process">
                </cfinvoke>   
                <cfoutput> Added Successfully!!! </cfoutput>        
            </cfif>
        </div>
    </body>
</html>