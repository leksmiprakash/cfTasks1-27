<cfcomponent >
	<cfset theDir = expandPath(".")>
	<cfscript>
		variables.validMimeTypes =  {
			'application/pdf': {extension: 'pdf', application: 'Adobe Acrobat'}
			,'application/vnd.ms-powerpoint': {extension: 'ppt', application: 'PowerPoint (97-2003)'}
			,'application/vnd.openxmlformats-officedocument.presentationml.presentation': {extension: 'pptx', application: 'PowerPoint (2007)'}			
		};
	</cfscript>
	<cffile action="upload" filefield="Field12"
		destination="#theDir#/images" mode="600"
		accept="#StructKeyList(variables.validMimeTypes)#"
		strict="true"
		result="uploadResult"
		nameconflict="makeunique">
	<cfset phone = "#form.Field25#"&"#form.Field25-1#"&"#form.Field25-2#">
	<cfset salary = "#form.Field16#"&'.'&"#form.Field16-1#">
	<cffunction name="insertData">
		<cfquery name = "addemployee" datasource = "cfsample" result="resultList" >
			INSERT INTO users (position, relocate, start_date, website, document, salary, firstname, lastname, email, phone)
			VALUES
			(	<cfqueryparam value = "#form.Field17#" cfsqltype = "cf_sql_varchar"/>,
				<cfqueryparam value = "#form.Field19#" cfsqltype = "cf_sql_varchar"/>,
				<cfqueryparam value = "#form.fld_userdob#" cfsqltype = "cf_sql_date"/>,
				<cfqueryparam value = "#Field14#" cfsqltype = "cf_sql_varchar"/>,
				<cfqueryparam value = "#uploadResult.serverFile#" cfsqltype = "cf_sql_varchar"/>,
				<cfqueryparam value = "#salary#" cfsqltype = "cf_sql_decimal"/>,
				<cfqueryparam value = "#form.Field22#" cfsqltype = "cf_sql_varchar"/>,
				<cfqueryparam value = "#form.Field23#" cfsqltype = "cf_sql_varchar"/>,
				<cfqueryparam value = "#form.Field13#" cfsqltype = "cf_sql_varchar"/>,
				<cfqueryparam value = "#phone#" cfsqltype = "cf_sql_varchar"/>
			)
		</cfquery>
		<cfset getNumberOfRecords = listLen(#resultList.generated_key#)> 
        <cfreturn getNumberOfRecords >
  	</cffunction>
</cfcomponent>