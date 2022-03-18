<cfcomponent displayname="checking" hint="Check Different numbers">
    <cffunction name="checkQuery" output="false" access="public">
        <cfparam name="form.inputValue" default="">
        <cfset finalList = "inputValue">
        <cfloop list="finalList" index="i">    
            <cfif i mod 3>                   
                <cfcontinue>
            </cfif>
            <cfset finalList = "i">
        </cfloop>
        <cfreturn>
    </cffunction>  
</cfcomponent>