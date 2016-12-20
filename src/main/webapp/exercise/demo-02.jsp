<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ctx = request.getContextPath();
%>
<html>
<head>
    <title>Demo Page</title>
    <script src="<%= ctx%>/js/angular.js" type="text/javascript"></script>
</head>
<body>

    <div ng-app="myApp" ng-controller="myCtrl">
        Input your name: <input ng-model="user.name">
        <h2>Hello: {{user.name}}</h2>
    </div>

    <script>
        var app = angular.module('myApp', []);
        app.controller('myCtrl', function($scope) {
            $scope.user = {name:"Lily"};
        });
    </script>

</body>
</html>
