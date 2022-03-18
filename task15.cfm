    <h1>cfinvoke</h1>
    <cfinvoke component="components.multiply" method="multiply" returnvariable="process" one=1 two=2 >
    <h5><cfoutput>Result of multiply(1,2): #process#</cfoutput><h5>
    <cfinvoke component="components.multiply" method="multiply" returnvariable="process" one=1 two=2 three=3>
    <h5><cfoutput>Result of multiply(1,2,3): #process#</cfoutput><h5>
    <cfinvoke component="components.multiply" method="multiply" returnvariable="process" one=1 two=2 three=3 four=4>
    <h5><cfoutput>Result of multiply(1,2,3,4): #process#</cfoutput><h5>


    <h1>cfobject</h1>    
    <cfobject name="multiplyObj" type="component" component="components.multiply">
    <h5><cfoutput>Result of multiply(1,2): #multiplyObj.multiply(1,2)#</cfoutput><h5>
    <h5><cfoutput>Result of multiply(1,2,3): #multiplyObj.multiply(1,2,3)#</cfoutput><h5>
    <h5><cfoutput>Result of multiply(1,2,3,4): #multiplyObj.multiply(1,2,3,4)#</cfoutput><h5>

          
    <h1><cfoutput>createObject</cfoutput></h1>
    <cfset x = createObject("component", "components.multiply")>
    <cfset process = x.multiply(1,2) />
    <h5><cfoutput>Result of multiply(1,2): #process#</cfoutput><h5>
    <cfset process = x.multiply(1,2,3) />
    <h5><cfoutput>Result of multiply(1,2,3): #process#</cfoutput><h5>
    <cfset process = x.multiply(1,2,3,4) />
    <h5><cfoutput>Result of multiply(1,2,3,4): #process#</cfoutput><h5>