<%
String email=(String)session.getAttribute("email");
if((email != null) && (!email.isEmpty())){
%>
<h1>Welcome Admin Profile</h1>	
<%}else{%>
<h1>Please Login First</h1>
<%}%>