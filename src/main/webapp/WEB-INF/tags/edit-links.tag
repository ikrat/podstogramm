<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="editLinks" class="collapse">
	<div class="col-xs-12 col-md-12" onClick="document.location='/edit'" onMouseOver="this.style.background='#f9f9f9'" onMouseOut="this.style.background='#FFFFFF'">
		<h4 style="margin: 20px 20px 0;"><b>Редактировать профиль</b></h4>
	</div>
	<div class="col-xs-12 col-md-12" onClick="document.location='/password'" onMouseOver="this.style.background='#f9f9f9'" onMouseOut="this.style.background='#FFFFFF'">
		<h4  style="margin: 20px 20px 0;">Сменить пароль</h4>
	</div>
	<div class="col-xs-12 col-md-12" onClick="document.location='/manage-access'" onMouseOver="this.style.background='#f9f9f9'" onMouseOut="this.style.background='#FFFFFF'">
		<h4  style="margin: 20px 20px 0;">Приложения с разрешенным доступом</h4>
	</div>
	<div class="col-xs-12 col-md-12" onClick="document.location='/comment-filter'" onMouseOver="this.style.background='#f9f9f9'" onMouseOut="this.style.background='#FFFFFF'">
		<h4  style="margin: 20px 20px 0;">Комментарии</h4>
	</div>
	<div class="col-xs-12 col-md-12" onClick="document.location='/emails'" onMouseOver="this.style.background='#f9f9f9'" onMouseOut="this.style.background='#FFFFFF'">
		<h4  style="margin: 20px 20px 0;">Эл.почта и СМС</h4>
	</div>
</div>