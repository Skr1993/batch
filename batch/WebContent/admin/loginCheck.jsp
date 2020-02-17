<%@page import="com.batch.serviceimpl.ServiceAdminImpl"%>
<%@page import="com.batch.service.ServiceAdmin"%>
<%@ include file="link.html"%>
<%@ include file="navbar.jsp"%>
<jsp:useBean id="admin" class="com.batch.bean.Admin">
	<jsp:setProperty property="adminEmail" name="admin"/>
	<jsp:setProperty property="adminPassword" name="admin"/>
</jsp:useBean>
<% 
ServiceAdmin serviceAdmin=new ServiceAdminImpl();
boolean b=serviceAdmin.loginAdmin(admin.getAdminEmail(), admin.getAdminPassword());
if(b){%>
	<jsp:include page="view.jsp"/>
<%}else{
	response.sendRedirect("sign.jsp");
}
%>