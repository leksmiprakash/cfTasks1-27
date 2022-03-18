
<cfcomponent displayname="Insert" hint="Insert Different string">
    <cfif IsDefined("form.form_submit")>
        <cffunction name="Insert" output="false" access="public">
            <cfargument name="data" type="any" required="false" />
            <cfset variables.result = data>
            <cfscript>
                MyArray=listToArray(variables.result," ",false,true);            
            </cfscript>
            <cfloop index="x" from="1" to="#ArrayLen(MyArray)#">
                <cfset variables.len = Len(MyArray[x])>
                <cfif IsNumeric(MyArray[x]) == false>
                    <cfif variables.len gt 3>
                        <cfquery >
                            INSERT INTO single_datas (datas)
                            VALUES ('#MyArray[x]#')
                        </cfquery>
                    </cfif>
                </cfif>        
            </cfloop>
            <cfreturn true>
        </cffunction>
    </cfif>
    <cffunction name="selectQuery" output="false" access="public" returnType="query">
         <cfquery name="local.selectQuery" >           
            SELECT DISTINCT datas AS Word, COUNT(datas) AS Frequency FROM single_datas GROUP BY datas Asc;
        </cfquery>
        <cfreturn local.selectQuery>
    </cffunction>
</cfcomponent>
