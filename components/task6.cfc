<cfcomponent displayname="checking" hint="Check Different numbers">
    <cffunction name="checkQuery" output="false" access="public">
        <cfscript>
            myStruct=StructNew(); 
            myStruct["#form.inputKey#"]="#form.inputValue#";
        </cfscript>
        <cfreturn myStruct>
    </cffunction>  
</cfcomponent>