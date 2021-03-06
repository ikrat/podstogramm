<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ attribute name="index" required="true" type="java.lang.Object"%>
<%@ attribute name="comment" required="false" type="net.study.podstogramm.entity.Comment"%>

<c:forEach var="comment" items="${comments }">
<div class="col-md-12" data-id-comment="${comment.id }">
	<h5>
		<a href="/${comment.profile.login }" style="color: #000000;"><b>${comment.profile.login }</b></a> ${comment.content }
	</h5>
	</div>
</c:forEach>