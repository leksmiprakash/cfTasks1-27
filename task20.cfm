<cfinvoke component="components.task20" method="makeRandomString" returnvariable="captcha">
</cfinvoke>
<cfset showForm = true>
<cfparam name="form.email" default="">
<cfparam name="form.captcha" default="">
<cfparam name="form.captchaHash" default="">
<cfif isDefined("form.send")>
	<cfset errors = "">	
	<cfif not len(trim(form.email))>
		<cfset errors = errors & "You must include your email.<br />">
	</cfif>
	<cfif hash(ucase(form.captcha)) neq form.captchaHash>
		<cfset errors = errors & "You did not enter the right text.<br />">
	</cfif>		
	<cfif errors is "">
		<cfset showForm = false>
	</cfif>	
</cfif>
<cfif showForm>
	<cfset captchaHash = hash(captcha)>
	<cfoutput>
	<p>
	Please fill the form below.
	</p>	
	<cfif isDefined("errors")>
	<p>
	<b>Correct these errors:<br />#errors#</b>
	</p>
	</cfif>
	
	<form action="#cgi.script_name#" method="post" >
	<table>
		<tr>
			<td>Email:</td>
			<td><input name="email" type="email" value="#form.email#"></td>
		</tr>
		<tr>
			<td>Enter Text Below:</td>
			<td><input type="text" name="captcha"></td>
		</tr>
		<tr>
			<td colspan="2">
			<cfimage action="captcha" width="300" height="75" text="#captcha#">
			<input type="hidden" name="captchaHash" value="#captchaHash#">
			</td>
		</tr>		
		<tr>
			<td> </td>
			<td><input type="submit" name="send" value="Send"></td>
		</tr>
	</table>
	</form>
	</cfoutput>	
	<cfelse>
	<cfoutput>
        <p>
            Subscription Added.
        </p>
	</cfoutput>	
</cfif>