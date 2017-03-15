<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<form action="/sign-in-handler" method="post">
	<div class="panel panel-default">
		<div class="panel-body" align="center">
			<div class="col-md-12 logotype" align="center">
				<img src="/static/img/logo2.jpg" class="img-responsive logo">
			</div>
			<div class="col-md-12 input-area">
				<input id="login" name="login" class="form-control" placeholder="Имя пользователя" required autofocus>
			</div>
			<div class="col-md-12 input-area">
				<input id="password" name="password" type="password" class="form-control" placeholder="Пароль" required autofocus>
			</div>
			<div class="col-xs-8 col-md-12 col-sm-8 input-area">
				<input type="submit" class="btn btn-info fb-button" value="Войти">
			</div>
		</div>
	</div>
</form>