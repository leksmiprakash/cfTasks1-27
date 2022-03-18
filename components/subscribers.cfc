<cfcomponent>
<cffunction name="getUser" access="remote" returnFormat="JSON">
    <cfargument name="EmailId" type="any" required="true">
       <cfquery name="getMail" datasource="cfsample">
         SELECT EmailId
                FROM subscribers 
            WHERE EmailId = "#EmailId#"             
        </cfquery> 
       <cfset cfcResults = getMail.RecordCount>
        <cfif cfcResults NEQ 0>
               
            <cfelse>
            <cfset cfcResults1 = true>  
            <cfreturn cfcResults1>         
        </cfif>
           
    </cffunction>
</cfcomponent>