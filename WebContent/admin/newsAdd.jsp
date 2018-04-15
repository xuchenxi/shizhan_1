<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="com.mingrisoft.*"%>

<%
request.setCharacterEncoding("UTF-8");
News News1 = new News();
Function Fun= new Function();
String [] sa =null;
String AdminName = (String) session.getAttribute("AdminName");
String Action = request.getParameter("Action");
if(Action!=null&& Action.equals("Add")){
	String IP =request.getRemoteAddr();
	String [] s=new String[2];
	s[0]=request.getParameter("NewsTitle");
	s[1]=request.getParameter("NewsContent");
	String sOK=News1.AddNews(s, AdminName, IP);
	if(sOK.equals("Yes")){
		out.print("<script>alert('添加新闻成功！');location.href='news.jsp';</script>");
		return;
	}else{
		out.print("<script>alert('添加新闻失败！');location.href='news.jsp';</script>");
		return;
	}
}

%>