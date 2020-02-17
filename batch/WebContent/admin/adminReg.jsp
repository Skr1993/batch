<%@page import="com.batch.serviceimpl.ServiceAdminImpl"%>
<%@page import="com.batch.service.ServiceAdmin"%>
<%@page import="com.batch.serviceimpl.ServiceCourseImpl"%>
<jsp:include page="link.html"></jsp:include>
<jsp:include page="navbar.jsp"></jsp:include>
<jsp:useBean id="admin" class="com.batch.bean.Admin">
	<jsp:setProperty property="*" name="admin"/>
</jsp:useBean>
<%
String password=request.getParameter("adminPassword");
String repassword=request.getParameter("adminRepassword");
if(password.equals(repassword) && (!password.isEmpty()) && (!repassword.isEmpty())){
		ServiceAdmin admin2=new ServiceAdminImpl();
		int status=admin2.saveAdmin(admin);
		if(status>0){
			response.sendRedirect("sign.jsp");
		}else {
			response.sendRedirect("signup.jsp");
		}
}else{
	response.sendRedirect("signup.jsp");
}
%>