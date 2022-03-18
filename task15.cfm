    <h2>Using Cf Invoke</h2>

    <cfinvoke component="components.task15" method="multiply" returnvariable="process" one=1 two=2 >
    <h4><cfoutput>Result of multiply(1,2): #process#</cfoutput></h4>
    <cfinvoke component="components.task15" method="multiply" returnvariable="process" one=1 two=2 three=3>
    <h4><cfoutput>Result of multiply(1,2,3): #process#</cfoutput></h4>
    <cfinvoke component="components.task15" method="multiply" returnvariable="process" one=1 two=2 three=3 four=4>
    <h4><cfoutput>Result of multiply(1,2,3,4): #process#</cfoutput></h4>


    <h2>Using Cf Object</h2>   
    <cfobject name="multiplyObj" type="component" component="components.task15">
    <h4><cfoutput>Result of multiply(1,2): #multiplyObj.multiply(1,2)#</cfoutput></h4>
    <h4><cfoutput>Result of multiply(1,2,3): #multiplyObj.multiply(1,2,3)#</cfoutput></h4>
    <h4><cfoutput>Result of multiply(1,2,3,4): #multiplyObj.multiply(1,2,3,4)#</cfoutput></h4>

          
   <h2>Using Create Object</h2>
    <cfset x = createObject("component", "components.task15")>
    <cfset process = x.multiply(1,2) />
    <h4><cfoutput>Result of multiply(1,2): #process#</cfoutput></h4>
    <cfset process = x.multiply(1,2,3) />
    <h4><cfoutput>Result of multiply(1,2,3): #process#</cfoutput></h4>
    <cfset process = x.multiply(1,2,3,4) />
    <h4><cfoutput>Result of multiply(1,2,3,4): #process#</cfoutput></h4>