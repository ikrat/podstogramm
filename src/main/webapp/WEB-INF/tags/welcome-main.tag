<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ attribute name="index" required="true" type="java.lang.Object"%>
<%@ attribute name="photo" required="false" type="net.study.podstogramm.entity.Photo"%>

<div id="ui-item-${index }">
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
			<b>${photo.profile.login }</b>
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
		<a href="/${photo.profile.login }" style="color: #000000;"><b>${photo.profile.login }</b></a>
		<p style="word-break: break-all;">${photo.content }</p>
	</div>
</div>