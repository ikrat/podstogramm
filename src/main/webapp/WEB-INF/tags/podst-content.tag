<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
	<c:when test="${profile.publications == 0 }">
		<div class="col-md-6">
			<img class="img-responcive photo" src="/static/img/sign-screan.jpg">
		</div>
		<div class="col-md-6">
			<h3 align="center">Welcome to our web-site!</h3>
			<h4 align="center">Download your first photo.</h4>
			<div class="col-md-12" align="center">
				<input type="file" class="btn btn-info" name="file" value="${photo.src }" />
			</div>
		</div>
	</c:when>
	<c:otherwise>
		<c:forEach var="photo" items="${profile.photos }">
			<div class="col-md-4" align="center">
				<img class="img-responcive photo" src="${photo.src }">
			</div>
		</c:forEach>
	</c:otherwise>
</c:choose>