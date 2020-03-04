<%@ include file="link.html"%>
<%@ include file="navbar.jsp"%>
<div class="container">
	<h1 class="text-center">Approval Form</h1>
 <form action="approvalCheck.jsp" method="post">
    <div class="form-group">
      <label for="adminEmail">Email:</label>
      <input type="email" class="form-control" id="adminEmail" placeholder="Enter email" name="candidateEmail">
    </div>
    <div class="form-group">
      <label for="adminPassword">Password:</label>
      <input type="password" class="form-control" id="adminPassword" placeholder="Enter password" name="candidatePassword">
    </div>
    <div class="form-group">
      <label for="adminPassword">Password:</label>
      <input type="password" class="form-control" id="adminPassword" placeholder="Enter password" name="candidateRepassword">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-success">Submit</button>
</form>
</div>
