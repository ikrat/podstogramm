<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="col-md-4" align="center">
	<c:choose>
		<c:when test="${profile.avatar == null }">
			<img class="img-circle avatar" alt="avatar" src="/static/img/unknown.jpg">
		</c:when>
		<c:otherwise>
			<img class="img-circle avatar" alt="avatar" src="${profile.avatar }">
		</c:otherwise>
	</c:choose>
</div>