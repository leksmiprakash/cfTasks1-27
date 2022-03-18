<cfcomponent displayname="insert" hint="insert Data">
    <cffunction name="insertQuery" output="false" access="public" >
        <cfquery >
            INSERT INTO subscribers (userName,EmailId) VALUES (
                <cfqueryparam cfsqltype="cf_sql_varchar"   value="#form.userName#">,
                <cfqueryparam cfsqltype="cf_sql_varchar"   value="#form.userEmail#">
            )
        </cfquery>
         <cfreturn>
    </cffunction>
</cfcomponent>