<cfcomponent displayname="checking" hint="Check Different numbers">
    <cffunction name="checkQuery" output="false" access="public">
        <cfset variables.finalList = "#inputValue#">
        <cfset variables.result=""/>
        <cfloop list="#finalList#" index="i">    
            <cfif i mod 3 EQ 0>                   
                <cfset result&=i&","/>
            <cfelse>
                <cfcontinue>
            </cfif>
        </cfloop>
        <cfreturn result>
    </cffunction>  
</cfcomponent>