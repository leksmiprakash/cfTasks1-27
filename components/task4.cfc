<cfcomponent displayname="checking" hint="Check Different numbers">
    <cffunction name="lastDays" output="false" access="public">
        <cfset Variables.lastDay = DateFormat(DateAdd("m",1, Now()), "mm/d/yyyy")>
        <cfset Variables.lastDay = ListSetAt(Variables.lastDay,2,"1","/")>
        <cfset Variables.lastDay = DateFormat(DateAdd("d",-1, Variables.lastDay), "d-mmm-yyyy")>
        <cfset Variables.lastDay2 = DateFormat(DateAdd("d",-1, Variables.lastDay), "d-mmm-yyyy")>
        <cfset Variables.lastDay3 = DateFormat(DateAdd("d",-2, Variables.lastDay), "d-mmm-yyyy")>
        <cfset Variables.lastDay4 = DateFormat(DateAdd("d",-3, Variables.lastDay), "d-mmm-yyyy")>
        <cfset Variables.lastDay5 = DateFormat(DateAdd("d",-4, Variables.lastDay), "d-mmm-yyyy")>
        <cfreturn Variables>
    </cffunction>  
    <cffunction name="lastFriday" output="false" access="public">
        <cfset currentDate = Now() /> 
        <cfset obj = {}>
        <cfset todaydayOfWeek = dayOfWeek(currentDate)>
        <cfset fridayOffset = (6-todaydayOfWeek)-7>
        <cfset obj.mostRecentFriday = dateAdd("d", fridayOffset, currentDate)>
        <cfreturn obj>
    </cffunction>  
    <cffunction name="lastDay" output="false" access="public">
        <cfset dtThisMonth = CreateDate( Year( Now() ), Month( Now() ), 1 )/>
        <cfset dtLastDay = (DateAdd( "m", 1, dtThisMonth ) - 1 )/>
        <cfreturn dtLastDay>
    </cffunction>
</cfcomponent>