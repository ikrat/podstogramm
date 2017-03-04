<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="col-xs-12 col-md-12 col-sm-12">
	<div class="col-xs-3 col-md-3 col-sm-3" align="right">
		<img class="img-circle edit-small" src="/static/img/test.jpg">
	</div>
	<div class="col-xs-7 col-md-7 col-sm-7">
		<h4>login</h4>
	</div>
</div>
<br>
<br>
<form:form action="/edit" method="post" enctype="multipart/form-data" commandName="profile">
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>Старый пароль</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="oldPassword" type="password" class="form-control" id="inputOldPassword">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>Новый пароль</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="newPassword" class="form-control pull-right" id="inputNewPassword" type="password">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>Подтвердите пароль</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="confirmPassword" class="form-control pull-right" id="inputConfirmPassword" type="password">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-2 col-md-2 col-sm-2" align="right"></div>
		<div class="col-xs-8 col-md-8 col-sm-8">
			<input type="submit" class="btn btn-primary" value="Отправить">
		</div>
	</div>
</form:form>