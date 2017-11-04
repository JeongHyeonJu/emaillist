<%@ page import="kr.co.saramin.emaillist.vo.EmaillistVo" %>
<%@ page import="kr.co.saramin.emaillist.dao.EmaillistDao" %>
<%
 	request.setCharacterEncoding("utf-8");

 	String firstName = request.getParameter("fn");
 	String lastName = request.getParameter("ln");
 	String email = request.getParameter("email");
 	
 	EmaillistVo vo = new EmaillistVo();
 	vo.setFirstName(firstName);
 	vo.setLastName(lastName);
 	vo.setEmail(email);
 	
 	EmaillistDao dao = new EmaillistDao();
 	dao.insert(vo);
 	
 	response.sendRedirect(request.getServletContext().getContextPath());
 %>