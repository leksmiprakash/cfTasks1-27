
<cfcomponent displayname="Insert" hint="Insert Different string">
    <cfif IsDefined("form.form_submit")>
        <cffunction name="Insert" output="false" access="public">
            <cfargument name="data" type="any" required="false" />
            <cfset result = data>
            <cfscript>
                MyArray=listToArray(result," ",false,true);            
            </cfscript>
            <cfloop index="x" from="1" to="#ArrayLen(MyArray)#">
                <cfset len = Len(MyArray[x])>
                <cfif IsNumeric(MyArray[x]) == false>
                    <cfif len gt 3>
                        <cfquery datasource="cfsample">
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
         <cfquery name="selectQuery" datasource="cfsample">           
            SELECT DISTINCT datas AS Word, COUNT(datas) AS Frequency FROM single_datas GROUP BY datas Asc;
        </cfquery>
        <cfreturn selectQuery>
    </cffunction>
</cfcomponent>
