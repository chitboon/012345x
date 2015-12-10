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
    <title>Try Again</title>
</head>
<%
  int result = (Integer)request.getAttribute("tryagain");
  String status;
  if (result == 1) {
    status = "higher";
  } else {
    status = "lower";
  }

%>
<body>
You number is <%= status %> than the lucky number! <a href="guess.jsp">Back to Home</a>
</body>
</html>
