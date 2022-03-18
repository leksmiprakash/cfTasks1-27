<cfcomponent displayname="checking" hint="Check Different numbers">
    <cffunction name="checkQuery" output="false" access="public">
        <cfset variables.input=#form.inputValue#>
        <cfset variables.result="">
        <cfloop from="1" to=#input# index="i"> 
            <cfif #i# MOD 2 eq 0>
                <cfset variables.result&="<span style='color:green'>"&i&" Even Number</span><br>"/>
            <cfelse>
                <cfset variables.result&="<span style='color:blue'>"&i&" Odd Number</span><br>"/>
            </cfif>
        </cfloop>
        <cfreturn result>
    </cffunction>  
</cfcomponent>