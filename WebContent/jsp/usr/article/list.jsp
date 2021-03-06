<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.List"%>
<%@ page import="com.sbs.example.jspCommunity.dto.Article"%>
<%
	List<Article> articles = (List<Article>) request.getAttribute("articles");
%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<title>게시물 리스트</title>
</head>
<body>
	<h1>게시물 리스트</h1>
	<%
	for (Article article : articles) {
	%>
	<div>
		번호:
		<%=article.id%>
		<br /> 작성날짜 :
		<%=article.regDate%>
		<br /> 갱신날짜:
		<%=article.updateDate%>
		<br /> 작성자:
		<%=article.extra__writer%>
		<br /> 제목:
		<%=article.title%>
		<hr />
	</div>
	<%
		}
	%>
</body>
</html>
