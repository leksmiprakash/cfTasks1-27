<cfcomponent displayname="checking" hint="Check Different numbers">
    <cffunction name="checkQuery" output="false" access="public" returnType="array">
        <cfset jasonArray = '[{"Name":"saravanan","Age":27,"LOCATION":"dubai"},{"Name":"Ram","Age":26,"LOCATION":"Kovilpatti"}]' />
        <cfset jasonToTable=DeserializeJSON(jasonArray)>
        <cfreturn jasonToTable>
    </cffunction>  
</cfcomponent>