<cfcomponent displayname="captcha" hint="create captcha">
	<cffunction name="makeRandomString" returnType="string" output="false">
		<cfset variables.chars = "23456789ABCDEFGHJKMNPQRS">
		<cfset variables.length = randRange(4,7)>
		<cfset variables.result = "">
		<cfset variables.i = "">
		<cfset variables.char = "">	
		<cfscript>
			for(i=1; i <= length; i++) {
				char = mid(chars, randRange(1, len(chars)),1);
				result&=char;
			}
		</cfscript>		
		<cfreturn result>
	</cffunction>
</cfcomponent>