<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="col-md-12">
	<div class="col-md-1">
		<span class="glyphicon glyphicon-heart" aria-hidden="true"></span>
	</div>
	<form:form action="/comment" method="post" enctype="multipart/form-data" commandName="profile">
		<div class="col-md-11">
			<textarea class="form-control" style="resize: none;" placeholder="Your comment"></textarea>
		</div>
	</form:form>
</div>