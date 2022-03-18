<cfcomponent displayname="insert" hint="insert Data">
    <cffunction name="insertDoc" output="false" access="public" >
        <cffile action="read" file="#form.file#" variable="fileContents">
        <cfquery >
            INSERT INTO fileRead (datas)
            VALUES ('#fileContents#')
        </cfquery>
        <cfreturn>
    </cffunction>
</cfcomponent>