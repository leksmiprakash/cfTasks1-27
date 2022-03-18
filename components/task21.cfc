<cfcomponent displayname="checking" hint="Check Different numbers">
    <cffunction name="checkQuery" output="false" access="public">
        <cfset thisDir = expandPath(".")>
        <cfscript>
            variables.validMimeTypes =  {
                'image/jpeg': {extension: 'jpg'}
                ,'image/png': {extension: 'png'}
                ,'image/gif': {extension: 'gif'}
            };
        </cfscript>
        <cffile action="upload" filefield="fileUpload"
            destination="#thisDir#/attachments" mode="600"
            accept="#StructKeyList(variables.validMimeTypes)#"
            strict="true"
            result="uploadResult"
            nameconflict="makeunique">
        <cfmail to = "#Form.bEmail#" from = "lekshmi.prakash@techversantinfo.com" subject = "Birthday Wish" >  
            #form.bWish# 
            <cfmailparam file="./attachments/#uploadResult.serverFile#"   disposition="attachment" type="text">
        </cfmail> 
        <cfreturn >
    </cffunction>  
</cfcomponent>