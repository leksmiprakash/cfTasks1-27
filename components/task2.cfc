<cfcomponent displayname="checking" hint="Check Different numbers">
    <cffunction name="checkQuery" output="false" access="public">
        <cfset variables.input = form.inputValue>
        <cfswitch expression="#input#"> 
            <cfcase value="5"><cfset var result = "Very Good" ></cfcase>
            <cfcase value="4"><cfset var result = "Good" ></cfcase> 
            <cfcase value="3"><cfset var result = "Fair" ></cfcase>
            <cfdefaultcase><cfset var result = "OK" ></cfdefaultcase> 
        </cfswitch>
        <cfreturn result>
    </cffunction>  
</cfcomponent>