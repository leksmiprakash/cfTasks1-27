<cfcomponent>
<cffunction name="checkEmail" access="remote" returnType="string" returnformat="plain" output="false">
     <cfargument name="userEmail" required="true">
   
    <cfset var returnStg = "">
    
        <cfquery  name="validateUser"   result="tmpResult">
            SELECT EmailId FROM subscribers WHERE EmailId=<cfqueryparam value="#arguments.userEmail#" cfsqltype="cf_sql_varchar" maxlength="255"> 

        </cfquery>
        <cfif validateUser.RecordCount EQ 1>
       <cfset returnStg = true>
        <cfelse>
            <cfset returnStg = false>
        </cfif>
        
    <cfreturn returnStg>    
</cffunction>
    


</cfcomponent>