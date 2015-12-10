<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guess</title>
</head>
<%
  String nric = request.getParameter("nric");
  String email = request.getParameter("email");
  if (nric != null) session.setAttribute("nric", nric);
  else nric = (String)session.getAttribute("nric");
  if (email != null) session.setAttribute("email", email);
  else email = (String)session.getAttribute("email");
%>
<body>
<form action="controller">
Your NIRC is <%= nric %> <br>
Your email address is <%= email %> <br>
<input type="text" name="guess" placeholder="Pick your lucky number" />
<input type="submit" />
</form>

</body>
</html>
