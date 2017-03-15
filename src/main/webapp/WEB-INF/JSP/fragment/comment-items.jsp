<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ attribute name="index" required="true" type="java.lang.Object"%>
<%@ attribute name="photo" required="false" type="net.study.podstogramm.entity.Photo"%>


<c:forEach var="comment" items="${comments }">
	<h5>
		<a href="/${comment.profile.login }" style="color: #000000;"><b>${comment.profile.login }</b></a> ${comment.content }
	</h5>
</c:forEach>