<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-xs-12 col-md-12 col-sm-12">
	<div class="col-xs-3 col-md-3 col-sm-3" align="right">
		<c:choose>
			<c:when test="${profile.avatar == null }">
				<img class="img-circle edit-small" src="/static/img/unknown.jpg">
			</c:when>
			<c:otherwise>
				<img class="img-circle edit-small" src="${profile.avatar }">
			</c:otherwise>
		</c:choose>
	</div>
	<div class="col-xs-7 col-md-7 col-sm-7">
		<h4>${profile.login }</h4>
	</div>
</div>
<br>
<br>
<form:form action="/password" method="post" commandName="profile">
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>Old password</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="oldPassword" type="password" class="form-control" id="inputOldPassword">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>New password</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="newPassword" class="form-control pull-right" id="inputNewPassword" type="password">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>Confirm password</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="confirmPassword" class="form-control pull-right" id="inputConfirmPassword" type="password">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right"></div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input type="submit" class="btn btn-primary" value="Submit">
		</div>
	</div>
</form:form>