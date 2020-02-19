<%@ include file="link.html"%>
<%@ include file="navbar.jsp"%>
<div class="container">
<h1 class="text-center">Candidate Login Form</h1>
 <form action="#">
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-success">Submit</button>
    <a href="signup.jsp" class="btn btn-info"> Signup</a>
    </form>
</div>