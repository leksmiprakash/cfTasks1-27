<cfcomponent displayname="checking">
    <cffunction name="checkQuery" output="false" access="public">
        <cfset variables.input = form.inputValue >
        <cfif input eq 5>
            <cfset variables.result = "Very Good" >
        <cfelseif input eq 4>
            <cfset variables.result = "Good" >
        <cfelseif input eq 3>
            <cfset var result = "Fair" >
        <cfelse>
            <cfset var result = "Ok" >
        </cfif>
        <cfreturn result>
    </cffunction>  
</cfcomponent>