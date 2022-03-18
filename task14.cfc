<cfcomponent  displayname="imgUpload">
     <cffunction name="CreateImageThumb" access="public" returnType="string" output="true">
        <cfset thisDir = expandPath(".")>
        <cfset variables.imagename = form.flUserName/>
        <cfset variables.imgdescr = form.flUserDesc/>
        <cfset variables.imagefile = form.flUserImage/>
        <cfset variables.result = "" />
 	    <cfif  len(trim(variables.imagefile))>
    		<cffile action="upload" fileField="flUserImage" destination="#thisDir#" result="fileUpload" mode="777" nameconflict="overwrite">
		    <cfif fileUpload.fileWasSaved>
			    <cfif IsImageFile("#fileUpload.serverfile#")>
				    <cfimage action="read" source="#fileUpload.serverfile#" name="myImage">
				    <cfif ImageGetHeight(myImage) gt 800 or ImageGetWidth(myImage) gt 800>
                        <cffile action="delete" file="#fileUpload.serverDirectory#/#fileUpload.serverFile#">
                        <p> 
                            The image  uploaded was too large. It must be less than 800 px width
                             and 800 px height. uploaded image is of #imageGetWidth(myImage)# pixels width
                             and #imageGetHeight(myImage)# pixels hight.
                        </p>            
				    <cfelse>
                        <cfset ImageScaleToFit(myImage,20,20,"bilinear")>
                        <cfset newImageName = fileUpload.serverDirectory & "/" &fileUpload.serverFilename & "_thumbnail." &fileUpload.serverFileExt>
                        <cfimage source="#myImage#" action="write" destination="#newImageName#" overwrite="yes"> 
                        <p> Created Thumbnail of the image is :
                            <img src="#getFileFromPath(newImageName)#"><br>
                            <form action="task14details.cfm" method="post">
                                <input type="hidden" name="in" value="#variables.imagename#"/>
                                <input type="hidden" name="ids" value="#variables.imgdescr#"/>
                                <input type="hidden" name="im" value="#fileUpload.serverFile#"/>
                                <button  type="submit" name="viewdata" class="btn btn-primary" >View Original</button>
                            </form>
                        </p>                  
				    </cfif>
			    <cfelse>
    				<cffile action="delete" file="#fileUpload.serverDirectory#/#fileUpload.serverFile#">
    				<p>    The file you uploaded, #fileUpload.clientFile#, was not a valid image. </p>        
				</cfif>
			</cfif>
		</cfif>
        <cfreturn result/>
    </cffunction>
</cfcomponent>