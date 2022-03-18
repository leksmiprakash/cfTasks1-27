<html>
    <head>
    </head>
    <body>
       <cfinvoke component="components.task16" method="matrixPattern" returnvariable="result">  </cfinvoke>
       <cfloop from="1" to="#ArrayLen(result)#" index="i">
            <cfloop from="1" to="#ArrayLen(result[i])#" index="j">
                <cfoutput> #result[i][j]# &nbsp;&nbsp;</cfoutput>
            </cfloop>
            <br>
       </cfloop>     
          
    </body>
</html>