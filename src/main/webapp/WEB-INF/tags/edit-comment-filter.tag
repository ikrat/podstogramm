<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-4 col-md-4 col-sm-4" align="left">
			<h2>Comments</h2>
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-1 col-md-1 col-sm-1 check" align="left">
			<div class="checkbox">
    			<label>
    				<input type="checkbox" style="width: 16px; height: 16px;">
   				</label>
 			 </div>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7" style="padding-left: 0;">
			<h4><b>Hide Inappropriate Comments</b></h4>
		</div>
		<div class="col-xs-12 col-md-12 col-sm-12" style="padding-bottom: 0 !important;">
			<h4>Hide comments that contain words or phrases often reported as offensive.</h4>
		</div>
	</div>
<form:form action="/comment-filter" method="post" enctype="multipart/form-data" commandName="profile">
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-12 col-md-12 col-sm-12" align="left">
			<h4><b>Custom Keywords</b></h4>
			<h4>Comments that contain any of the words or phrases below will be hidden.</h4>
		</div>
		<div class="col-xs-12 col-md-12 col-sm-12">
			<textarea name="primaryWords" class="form-control area" id="inputPrimaryWords" style="width: 100%; height: 150px; resize:none;"
			placeholder="Add keywords, separated by commas"></textarea>
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-12 col-md-12 col-sm-12">
			<input type="submit" class="btn btn-primary" value="Submit">
		</div>
	</div>
</form:form>