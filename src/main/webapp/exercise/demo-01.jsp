<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ctx = request.getContextPath();
%>
<html>
<head>
    <title>Demo Page</title>
    <script src="<%= ctx%>/js/angular.js"></script>
</head>
<body>

    <div ng-app ng-init="name = 'World'">
        Say hello to: <input type="text" ng-model="name">
        <h1>Hello, {{ name }}</h1>
    </div>

</body>
</html>
