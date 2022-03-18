<cfcomponent displayname="checking" hint="Check Different numbers">
    <cffunction name="checkQuery" output="false" access="public" returnType="query">

        <cfset variables.myQuery = queryNew("id,name,email","Integer,Varchar,Varchar", 
        [ 
            {id=1,name="Dummy",email="dummy@gmail.com"}, 
            {id=2,name="Sample",email="sample@gmail.com"}, 
            {id=3,name="Test",email="test@gmail.com"} 
        ])> 
        <cfreturn myQuery>
    </cffunction>  
</cfcomponent>