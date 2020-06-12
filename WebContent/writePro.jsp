<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap13.board.BoardDBBean" %>
<%@ page import="chap13.board.BoardDataBean" %>
<%
// 	request.getParameter : 주소줄에 있는 subject내용을 가져옴
	String subject = request.getParameter("subject");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String content = request.getParameter("content");
	String password = request.getParameter("password");
	
	System.out.println("subject = "+subject);
	System.out.println("name = "+name);
	System.out.println("email = "+email);
	System.out.println("content = "+content);
	System.out.println("password = "+password);
	
	// 실행
	BoardDBBean bdb = BoardDBBean.getInstance();
	bdb.insertDetailArticle(name,subject,email,content,password);
	
	// 정보를 담고있는 객체
	BoardDataBean dataBean = new BoardDataBean();
	dataBean.setContent(content);
	dataBean.setWriter(name);
	dataBean.setEmail(email);
	dataBean.setPasswd(password);
	dataBean.setSubject(subject);
	
	bdb.insertArticle(dataBean);
	
// 	bdb.insertArticle(dataBean);
	out.println("writePro.jsp");
%>
