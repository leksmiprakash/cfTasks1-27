<cfcomponent displayname="task5" hint="age">
   <cffunction name="differenceAge" output="false" access="public">
        <cfset variables.d1 = form.yourDob/>
        <cfset variables.d2 = form.motherDob/>
        <cfset variables.result = StructNew() />
        <cfset variables.yAge = dateDiff("yyyy", variables.d1,  now())>
        <cfset variables.mAge = dateDiff("yyyy", variables.d2,  now())>
        <cfset gBirth =  variables.mAge-yAge>
        <cfset  StructInsert(variables.result, "yourAge",  variables.yAge) />
        <cfset  StructInsert(variables.result, "motherAge",  variables.mAge) />
        <cfset  StructInsert(variables.result, "giveBirth", gBirth) />
        <cfreturn variables.result>
   </cffunction>  
</cfcomponent>