<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%> <!-- ① -->
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/jspf/head.jspf"%>
<title>Post Form</title>
</head>
<body>
	<section class="container">
		<h2>글쓰기</h2>
		<hr />
		<%-- ② --%><sf:form method="post" 
			action="${requestScope['javax.servlet.forward.servlet_path']}"
			commandName="post"><%-- ③ --%>
			<fieldset class="form-group">
				<label for="formBookTitle">bookTitle</label>
				<sf:input id="formBookTitle" type="text" class="form-control"
					name="bookTitle"  path="bookTitle" 
					placeholder="Title input" /> <%-- ④ 제거: value="${post.bookTitle}" --%>
				<sf:errors path="bookTitle" /> <!-- ⑤ -->
			</fieldset>
			<fieldset class="form-group">
				<label for="formContent">Content</label>
				<sf:textarea id="formContent" class="form-control" name="content"
					rows="3" path="content"></sf:textarea> <!-- ⑥ 제거: ${post.content} -->
				<sf:errors path="content" />
			</fieldset>
			<input type="submit" class="btn btn-primary" value="저장" />
		</sf:form>
	</section>
	<%@ include file="/WEB-INF/jspf/footer.jspf"%>
</body>
</html>
