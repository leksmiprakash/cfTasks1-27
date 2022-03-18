<cfcomponent displayname="checking" hint="Check Different numbers">
    <cffunction name="checkQuery" output="false" access="public">
        <cfif IsDefined("Cookie.VisitsCounter") is False>
            <cfcookie name="VisitsCounter" value=1 />
        <cfelse> 
            <cfset count = #cookie.VisitsCounter# />
            <cfset increment = count + 1/>
            <cfcookie name="VisitsCounter" value=#increment# />   
        </cfif> 
        <cfreturn VisitsCounter>
    </cffunction>  
</cfcomponent>