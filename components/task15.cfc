<cfcomponent displayname="Multiply" hint="Multiply Different Numbers">
    <cffunction name="multiply" output="false" access="public" returnType="numeric">
        <cfargument name="one" type="any" required="false" default="1" />
        <cfargument name="two" type="any" required="false" default="1" />
        <cfargument name="three" type="any" required="false" default="1" />
        <cfargument name="four" type="any" required="false" default="1" />
        <cfset result = 0 >
        <cfset result = one * two * three * four >
        <cfreturn result />
    </cffunction>
</cfcomponent>