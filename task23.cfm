
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="./css/bootstrap.min.css" rel="stylesheet" >
        <script src="./js/validation.js"></script>
        <link href="./css/styles.css" rel="stylesheet" type="text/css" media="all" />
		<script src="./js/jquery-3.6.0.min.js"></script>
    </head>
    <body style="background:##799d0c;">
		<div id="container" class="ltr ">
			<h1 id="logo">
				<a href="##" target="_blank" title="Powered by Wufoo"></a>
			</h1> 
			<p id="error"></p>
			<form id="form54" name="form54" class="wufoo  page1" accept-charset="UTF-8" autocomplete="off" enctype="multipart/form-data" method="post" action="" onsubmit="return validateForm(this);">
				<header id="header" class="info">
					<h2 class="">Employment Application</h2>
					<div class="">Infinity Box Inc.</div>
				</header>
				<ul>
					<li id="fo54li17" class="">
						<label class="desc notranslate" id="title17" for="Field17">
							Which position are you applying for?
							<span id="req_17" class="req">*</span>
						</label>
						<div>
							<select id="Field17" name="Field17" class="field select medium"tabindex="0" data-wufoo-field="dropdown">
								<option value="" selected="selected"> </option>
								<option value="Interface Designer">Interface Designer</option>
								<option value="Software Engineer">Software Engineer</option>
								<option value="System Administrator">System Administrator</option>
								<option value="Office Manager">Office Manager</option>
							</select>
						</div>
					</li>
					<li id="fo54li19" class="focused">
						<fieldset>
							<!--[if !IE | (gte IE 8)]-->
							<legend id="title19" class="desc notranslate">
								Are you willing to relocate?
								<span id="req_19" class="req">*</span>
							</legend>
							<div>
								<input id="radioDefault_19" name="Field19" type="hidden" value="">
								<span>
									<input id="Field19_0" name="Field19" type="radio" class="field radio" value="Yes" tabindex="0" checked="checked">
									<label class="choice" for="Field19_0">
										<span class="choice__text notranslate">Yes</span>
										<span class="choice__qty"></span>
									</label>
								</span>
								<span>
									<input id="Field19_1" name="Field19" type="radio" class="field radio" value="No" tabindex="0" >
									<label class="choice" for="Field19_1">
										<span class="choice__text notranslate">No</span>
										<span class="choice__qty"></span>
									</label>
								</span>
							</div>
						</fieldset>
					</li>
					<li id="fo54li20" class="date notranslate">
						<label class="desc" id="title20">
							When can you start?
							<span id="req_20" class="req">*</span>
						</label>
						<input type="date" name="fld_userdob" id="fld_userdob"  />
					</li>
					<li id="fo54li14" class="notranslate       ">
					<label class="desc" id="title14" for="Field14">
						Portfolio Web Site
					</label>
					<div>
						<input id="Field14" name="Field14" type="url" class="field text large" value="http://" maxlength="255" tabindex="0">
					</div>
					</li>
					<li id="fo54li12" class="notranslate altInstruct      ">
						<label class="desc" id="title12" for="Field12">
							Attach a Copy of Your Resume
						</label>
						<div>
							<input id="Field12" name="Field12" type="file" class="field file" size="12" data-file-max-size="10" tabindex="0" data-wufoo-field="file-upload">
						</div>
						<p class="instruct" id="instruct12">
							<small>Word or PDF Documents Only</small>
						</p>
					</li>
					<li id="fo54li16" class="notranslate      ">
						<label class="desc" id="title16">
							Salary Requirements
						</label>
						<span class="symbol">$</span>
						<span>
							<input id="Field16" name="Field16" type="text" class="field text currency nospin" value="" size="10" tabindex="0">
							<label for="Field16">Dollars</label>
						</span>
						<span class="symbol radix">.</span>
						<span class="cents">
							<input id="Field16-1" name="Field16-1" type="text" class="field text nospin" value="" size="2" maxlength="2" tabindex="0">
							<label for="Field16-1">Cents</label>
						</span>
					</li>
					<li id="fo54li24" class="notranslate section      ">
						<section>
							<h3 id="title24">
								Your Contact Information
							</h3>
						</section>
					</li>
					<li id="fo54li22" class="notranslate">
						<label class="desc" id="title22">
							Name
							<span id="req_22" class="req">*</span>
						</label>
						<span>
							<input id="Field22" name="Field22" type="text" class="field text fn" value="" size="8" tabindex="0">
							<label for="Field22">First</label>
						</span>
						<span>
							<input id="Field23" name="Field23" type="text" class="field text ln" value="" size="14" tabindex="0">
							<label for="Field23">Last</label>
						</span>
					</li>
					<li id="fo54li13" class="notranslate">
						<label class="desc" id="title13" for="Field13">
							Email Address
							<span id="req_13" class="req">*</span>
						</label>
						<div>
							<input id="Field13" name="Field13" type="email" spellcheck="false" class="field text large" value="" maxlength="255" tabindex="0">
						</div>
					</li>
					<li id="fo54li25" class="phone notranslate">
						<label class="desc" id="title25">
							Phone
							<span id="req_25" class="req">*</span>
						</label>
						<span>
							<input id="Field25" name="Field25" type="tel" class="field text" value="" size="3" maxlength="3" tabindex="0" onkeyup="handleInput(this); autotab(this, document.getElementById('Field25-1'), this); filterNonnumeric(this);"  onfocus="this.selectionStart = this.selectionEnd = this.value.length;">
							<label for="Field25">###</label>
						</span>
						<span class="symbol">-</span>
						<span>
							<input id="Field25-1" name="Field25-1" type="tel" class="field text" value="" size="3" maxlength="3" tabindex="0" onkeyup="handleInput(this); autotab(this, document.getElementById('Field25-2'), document.getElementById('Field25')); filterNonnumeric(this);" onfocus="this.selectionStart = this.selectionEnd = this.value.length;" placeholder="">
							<label for="Field25-1">###</label>
						</span>
						<span class="symbol">-</span>
						<span>
							<input id="Field25-2" name="Field25-2" type="tel" class="field text" value="" size="4" maxlength="4" tabindex="0" onkeyup="handleInput(this); autotab(this, this, document.getElementById('Field25-1')); filterNonnumeric(this);" onfocus="this.selectionStart = this.selectionEnd = this.value.length;" placeholder="">
							<label for="Field25-2">####</label>
						</span>
					</li>
					<li class="buttons ">
						<div>
							<input type="hidden" name="currentPage" id="currentPage" value="BR0wGNq1Wpm4boNzHwuBeNVDwuBeQKxX86IAnNX7wuBeWdUUgdOs=">
							<input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Submit">
						</div>
					</li>
				</ul>
			</form>
		</div>
		<cfif structKeyExists(form,'saveForm')>
			<cfinvoke component="components.task23" method="insertData" returnvariable="result">
			</cfinvoke>   
			<cfif result GT 0>
				<script>
				alert("Addedd Successfully");
				</script>
			</cfif>
		</cfif>
	</body>
</html>