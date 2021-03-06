<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String ctx = request.getContextPath();
%>
<html>
<head>
    <title>Demo Page</title>
    <script src="<%= ctx%>/js/angular.js" type="text/javascript"></script>
    <script src="<%= ctx%>/js/ui-bootstrap-tpls-1.3.2.js" type="text/javascript"></script>
</head>
<body>

<button class="btn btn-xs btn-warning" data-target="#myModal" data-toggle="modal" ng-click="sss()">弹框</button>
<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" class="modal fade" bs-popup="" ng-model="test"
     id="myModal" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header alert-info">
                <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                <h4 id="myModalLabel" class="modal-title">弹框</h4>
            </div>
            <div class="modal-body">
                <button class="btn btn-info" ng-click="hhh()">测试</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>

<script>
    directive('bsPopup', function ($parse) {
        return {
            require: 'ngModel',
            restrict: 'A',
            link: function (scope, elem, attrs, ctrl) {
                scope.$watch(function () {
                    return $parse(ctrl.$modelValue)(scope);
                }, function (newValue) {
                    if (newValue ==0) {
                        $(elem).modal('hide');
                        return;
                    }
                    if (newValue == 1) {
                        $(elem).modal('show');
                        return;
                    }
                });
            }
        }
    });
</script>


</body>
</html>
