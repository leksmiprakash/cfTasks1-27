<cfcomponent displayname="checking" hint="Check Different numbers">
    <cffunction name="checkQuery" output="false" access="public">
        <cfset var input = form.inputValue >
        <cfif input eq 5>
            <cfset var result = "Very Good" >
        <cfelseif input eq 4>
            <cfset var result = "Good" >
        <cfelseif input eq 3>
            <cfset var result = "Fair" >
        <cfelse>
            <cfset var result = "Ok" >
        </cfif>
        <cfreturn result>
    </cffunction>  
</cfcomponent>