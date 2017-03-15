<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<form:form action="/edit" method="post" enctype="multipart/form-data" commandName="profile">
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
			<input type="file" class="btn btn-info" name="file" value="${profile.avatar }" />
		</div>
	</div>
	<br>
	<br>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>Name</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="name" class="form-control pull-right" id="inputName" value="${profile.name }">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>Login</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="Login" class="form-control pull-right" id="inputLogin" value="${profile.login }">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>Web-site</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="webSite" class="form-control pull-right" id="inputWebSite" value="${profile.site }">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>About me</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<textarea name="firstName" class="form-control pull-right" id="inputFirstName" style="resize: none;" rows="5">${profile.aboutMe }</textarea>
		</div>
	</div>
	<br>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3"></div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<h3 style="color: #808080">personal information</h3>
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>Email</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="email" class="form-control pull-right" id="inputEmail" value="${profile.email }">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4 style="margin-top: 5px;">
				<b>Phone number</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="phone" class="form-control pull-right" id="inputPhone" value="${profile.phone }">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>Gender</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-4 col-sm-4">
			<select name="#" class="form-control">
				<option value="null">Not indicated</option>
				<option value="Man">Man</option>
				<option value="Woman">Woman</option>
			</select>
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right"></div>
		<div class="col-xs-3 col-md-3 col-sm-3">
			<input type="submit" class="btn btn-primary fb-button" value="Send">
		</div>
	</div>
</form:form>