<cfcomponent displayname="Insert" hint="Insert struct">
    <cffunction name="structQuery" access="public" returnType="struct" output="false">
        <cfif structKeyExists(Form,"formSubmit")>
            <cfset variables.key=Form.inputKey>
            <cfset variables.value=Form.inputValue>
        </cfif>
        <cfif NOT StructKeyExists(Session, "mystruct")>
            <cflock timeout=20 scope="Session" type="Exclusive">
                <cfset Session.mystruct = structNew()>
            </cflock>
        </cfif>
        <cfif StructKeyExists(Session, "mystruct")>
            <cfif IsDefined(variables.key) AND  IsDefined(variables.value) >
                <cfif NOT StructKeyExists(Session.mystruct,variables.key)>
                    <cfset Session.mystruct[variables.key] = variables.value> 
                </cfif>
            </cfif>
        </cfif>
        <cfreturn Session.mystruct>    
    </cffunction>

    <cffunction name="structUpdate" access="public" returnType="struct" output="false">
        <cfif structKeyExists(Form,"formSubmit")>
            <cfset key=Form.inputKey>
            <cfset value=Form.inputValue>
        </cfif>
        <cfif NOT StructKeyExists(Session, "mystruct")>
            <cflock timeout=20 scope="Session" type="Exclusive">
                <cfset Session.mystruct = structNew()>
            </cflock>
        </cfif>
        <cfif StructKeyExists(Session, "mystruct")>
            <cfif IsDefined("key") AND  IsDefined("value") >
                <cfif NOT StructKeyExists(Session.mystruct,"#key#")>
                    <cfset Session.mystruct["#key#"] = #value#>
                <cfelse>
                    <cfscript>
                        structUpdate(Session.mystruct,'#key#','#value#'); 
                    </cfscript>
                </cfif>
            </cfif>
        </cfif>
        <cfreturn Session.mystruct>    
    </cffunction>

    <cffunction name="structPresent" access="public" output="false">
        <cfif structKeyExists(Form,"formSubmit")>
            <cfset key=Form.inputKey>
            <cfset value=Form.inputValue>
        </cfif>
        <cfif NOT StructKeyExists(Session, "mystruct")>
            <cflock timeout=20 scope="Session" type="Exclusive">
                <cfset Session.mystruct = structNew()>
            </cflock>
        </cfif>
        <cfif StructKeyExists(Session, "mystruct")>
            <cfset variables.status ="">
            <cfif IsDefined("key") AND  IsDefined("value") >
                <cfif NOT StructKeyExists(Session.mystruct,"#key#")>
                    <cfset Session.mystruct["#key#"] = #value#>
                    <cfset status ="success">
                    <cfelse>
                        The struct Key : <cfoutput> "#key#"  is already present. Cannot add again. </cfoutput>
                        <cfset status ="fail">
                </cfif>
            </cfif>
        </cfif>
        <cfset variables.result = {
            "status" = status,
            "mystruct" = Session.mystruct   
        }>
        <cfreturn result>    
    </cffunction>

    <cffunction name="structSorting" access="public" output="false">    
        <cfif structKeyExists(Form,"formSubmit")>
            <cfset key=Form.inputKey>
            <cfset value=Form.inputValue>
        </cfif>
        <cfif NOT StructKeyExists(Session, "mystruct")>
            <cflock timeout=20 scope="Session" type="Exclusive">
                <cfset Session.mystruct = structNew()>
            </cflock>
        </cfif>
        <cfif StructKeyExists(Session, "mystruct")>
            <cfif IsDefined("key") AND  IsDefined("value") >
                <cfif NOT StructKeyExists(Session.mystruct,"#key#")>
                    <cfset Session.mystruct["#key#"] = #value#>
                </cfif>
            </cfif>
        </cfif>
        <cfreturn Session.mystruct>    
    </cffunction>
</cfcomponent>
