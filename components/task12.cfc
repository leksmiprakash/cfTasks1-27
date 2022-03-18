<cfcomponent displayname="select" hint="Retrive Value">
    <cffunction name="selectQuery" output="false" access="public" returnType="query">
        <cfquery name="cftask" >
            SELECT * FROM employee
        </cfquery>
        <cfreturn cftask>
    </cffunction>

    <cffunction name="getQuery" output="false" access="public">
        <cfset variables.result = StructNew() />
        <cfset variables.myText = "the quick brown fox jumps over the lazy dog" />
        <cfset variables.myWord = "#form.inputValue#" />
        <cfset  StructInsert(result, "myWord", "#form.inputValue#") />
        <cfset  StructInsert(result, "myText", "the quick brown fox jumps over the lazy dog") />
        <cfset  StructInsert(result, "occurrences", ( Len(myText) - Len(Replace(myText,myWord,'','all')) ) / Len(myWord)) />       
        <cfreturn result>
    </cffunction>
</cfcomponent>