<cfcomponent displayname="Insert" hint="Insert Different string">
    <cffunction name="matrixPattern" output="false" access="public" returnType="array"> 
          <cfset variables.firstarray=[1,4,7,2,5,8,3,6,9]/>
          <cfset variables.tempArray=ArrayNew(1)/>
          <cfset variables.lastArray=ArrayNew(2)/>
          <cfloop array="#firstarray#"  index = "i" item ="itm">
               <cfif i mod 3 EQ 0>
                    <cfset ArrayAppend(tempArray,itm )/>
                    <cfset ArrayAppend(lastArray, tempArray)/>
                    <cfset tempArray=ArrayNew(1)/>
               <cfelse>
                    <cfset ArrayAppend(tempArray,itm )/>
               </cfif>
          </cfloop>
        <cfreturn lastArray> 
    </cffunction>  
</cfcomponent>
