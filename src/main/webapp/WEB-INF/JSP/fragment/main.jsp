<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:forEach var="photo" items="${photos }">
	<div class="col-md-12 title-welcome">
		<div class="col-md-6">
			<c:choose>
				<c:when test="${profile.avatar == null }">
					<img class="img-circle small" alt="avatar"
						src="/static/img/unknown.jpg">
				</c:when>
				<c:otherwise>
					<img class="img-circle small" alt="avatar" src="${profile.avatar }">
				</c:otherwise>
			</c:choose>
			<b>${profile.login }</b>
		</div>
		<div class="col-md-6" align="right">${photo.created }</div>
	</div>
	<div class="col-md-12 welcome-content" align="center" style="padding-left: 0;">
		<img class="img-responcive photo-welcome" src="${photo.src }">
	</div>
	<div class="col-md-12 nobot">
		<h5>
			<b>${photo.likes } likes</b>
		</h5>
	</div>
	<div class="col-md-12 nobot">
		<h5>
			<a href="/${profile.login }" style="color: #000000;"><b>${profile.login }</b></a> ${photo.content }
		</h5>
	</div>
</c:forEach>