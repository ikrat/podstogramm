<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<jsp:include page="../section/css.jsp" />
</head>
<body class="myinsta">
	<jsp:include page="../section/header.jsp" />
	<section class="main">
		<sitemesh:write property='body' />
	</section>
	<jsp:include page="../section/footer.jsp" />
	<jsp:include page="../section/js.jsp" />
</body>
</html>