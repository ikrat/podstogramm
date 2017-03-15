<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="editLinks" class="collapse">
	<div class="col-xs-12 col-md-12 links" onClick="document.location='/edit'" onMouseOver="this.style.background='#f9f9f9'" onMouseOut="this.style.background='#FFFFFF'">
		<h4 style="margin: 20px 20px 0;"><b>Edit profile</b></h4>
	</div>
	<div class="col-xs-12 col-md-12 links" onClick="document.location='/password'" onMouseOver="this.style.background='#f9f9f9'" onMouseOut="this.style.background='#FFFFFF'">
		<h4  style="margin: 20px 20px 0;">Change password</h4>
	</div>
	<div class="col-xs-12 col-md-12 links" onClick="document.location='/manage-access'" onMouseOver="this.style.background='#f9f9f9'" onMouseOut="this.style.background='#FFFFFF'">
		<h4  style="margin: 20px 20px 0;">Authorized applications</h4>
	</div>
	<div class="col-xs-12 col-md-12 links" onClick="document.location='/comment-filter'" onMouseOver="this.style.background='#f9f9f9'" onMouseOut="this.style.background='#FFFFFF'">
		<h4  style="margin: 20px 20px 0;">Comments</h4>
	</div>
	<div class="col-xs-12 col-md-12 links" onClick="document.location='/emails'" onMouseOver="this.style.background='#f9f9f9'" onMouseOut="this.style.background='#FFFFFF'">
		<h4  style="margin: 20px 20px 0;">Email and SMS</h4>
	</div>
</div>