<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="pod" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="cont">
	<div class="panel panel-default">
		<div class="row">
			<aside class="col-xs-12 col-md-3 col-sm-3" style="padding-left: 0;">
				<div class="visible-xs-block xs-option-container">
					<a class="pull-left" data-toggle="collapse" href="#editLinks">Links <span class="caret"></span></a>
				</div>
				<pod:edit-links />
			</aside>
			<div class="col-xs-12 col-md-9 col-sm-9"  style="padding-top: 20px;">
				<pod:edit-content />
			</div>
		</div>
	</div>
</div>