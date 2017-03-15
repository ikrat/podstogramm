<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="pod" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="cont-welcome">
	<c:forEach var="photo" items="${photoForm.items }" varStatus="status">
		<div class="panel panel-default">
			<div class="row">
				<pod:welcome-main index="${status.index }" photo="${photo }" />
				<!--  	<pod:welcome-comments index="${status.index }" comment="${comment }"/>
						<pod:welcome-comments-form /> -->
			</div>
		</div>
	</c:forEach>
</div>
