<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="col-md-8">
	<div class="col-md-6">
		<h1>${profile.login }</h1>
	</div>
</div>
<div class="col-md-8">
	<div class="col-md-4">
		<h4>${profile.publications } post</h4>
	</div>
	<div class="col-md-4">
		<h4>${profile.followers } followers</h4>
	</div>
	<div class="col-md-4">
		<h4><a href="#" style="color: black;">${profile.following } following</a></h4>
	</div>
</div>
<div class="col-md-8">
	<c:choose>
		<c:when test="${profile.aboutMe == null }">

		</c:when>
		<c:otherwise>
			<div class="col-md-1">
				<h5>
					<b>${profile.name }</b>
				</h5>
			</div>
			<div class="col-md-10">
				<h5>${profile.aboutMe }</h5>
			</div>
		</c:otherwise>
	</c:choose>
</div>