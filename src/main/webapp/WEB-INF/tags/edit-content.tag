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
				<b>Name</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="firstName" class="form-control pull-right" id="inputFirstName" value="Name">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>Login</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="Login" class="form-control pull-right" id="inputLogin" value="Login">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>Web-site</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="webSite" class="form-control pull-right" id="inputWebSite" value="Web Site">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>About me</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<textarea name="firstName" class="form-control pull-right" id="inputFirstName"></textarea>
		</div>
	</div>
	<br>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3"></div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<h3 style="color: #808080">личная информация</h3>
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>Эл.адрес</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="email" class="form-control pull-right" id="inputEmail" value="Email">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4 style="margin-top: 0;">
				<b>Номер телефона</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input name="phone" class="form-control pull-right" id="inputPhone" value="Phone">
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right">
			<h4>
				<b>Пол</b>
			</h4>
		</div>
		<div class="col-xs-7 col-md-4 col-sm-4">
			<select name="#" class="form-control">
				<option value="null">Не указано</option>
				<option value="Man">Мужской</option>
				<option value="Woman">Женский</option>
			</select>
		</div>
	</div>
	<div class="col-xs-12 col-md-12 col-sm-12">
		<div class="col-xs-3 col-md-3 col-sm-3" align="right"></div>
		<div class="col-xs-7 col-md-7 col-sm-7">
			<input type="submit" class="btn btn-primary" value="Отправить">
		</div>
	</div>
</form:form>