<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<form:form action="/sign-up" method="POST">
	<div class="panel panel-default">
		<div class="panel-body" align="center">
			<div class="col-md-12 logotype" align="center">
				<img src="/static/img/logo2.jpg" class="img-responsive logo">
			</div>
			<div class="col-md-12" align="center">
				<h4>Зарегистрируйтесь, чтобы смотреть фото и видео ваших друзей.</h4>
			</div>
			<div class="col-md-12 input-area" align="center">
				<a href="/fbLogin" class="btn btn-info fb-button">Sign up with Facebook</a>
			</div>
			<div class="col-md-12 input-area">
				<input id="email" name="email" class="form-control" placeholder="Email" required autofocus>
			</div>
			<div class="col-md-12 input-area">
				<input id="login" name="login" class="form-control" placeholder="Login" required>
			</div>
			<div class="col-md-12 input-area">
				<input id="password" name="password" type="password" class="form-control" placeholder="Пароль" required autofocus>
			</div>
			<div class="col-xs-8 col-md-12 col-sm-8 input-area">
				<input type="submit" class="btn btn-info fb-button" value="Отправить">
			</div>
			<div class="col-xs-8 col-md-12 col-sm-8">
				<h5>
					Регистрируясь, вы соглашаетесь с нашими <b><a href="#" style="color: #000000">Условиями</a></b>
					 и <b><a href="#" style="color: #000000">Политикой конфиденциальности.</a></b>
				</h5>
			</div>
		</div>
	</div>
</form:form>