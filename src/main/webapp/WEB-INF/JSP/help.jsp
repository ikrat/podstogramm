<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="pod" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<form:form action="/help" method="post">
	<div class="cont">
		<div class="panel panel-default">
			<div class="row">
				<div class="col-md-12 title-welcome">
					<h3 class="text-center">Contact form</h3>
					<hr>
				</div>
				<div class="col-md-8 small-centered">
					<input name="Name" class="form-control pull-right help-input" id="inputName" placeholder="Input Your name">
				</div>
				<div class="col-md-8 small-centered">
					<input name="Email" class="form-control pull-right help-input" id="inputEmail" placeholder="Input Your Email">
				</div>
				<div class="col-md-8 small-centered">
					<textarea name="firstName" class="form-control pull-right help-input" id="inputFirstName" 
					placeholder="Input Your message" style="resize: none;" rows="5"></textarea>
				</div>
				<div class="col-xs-12 col-md-12 col-sm-12" align="center">
					<input type="submit" class="btn btn-primary btn-help" value="Send">
				</div>
			</div>
		</div>
	</div>
</form:form>