<%--
  Created by IntelliJ IDEA.
  User: chitboon
  Date: 12/9/15
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Success</title>
</head>
<body>
Congratulation <%= session.getAttribute("nric") %>, <%= request.getAttribute("success")%> is the correct number!
<a href="guess.jsp">Back to Home</a>
</body>
</html>
