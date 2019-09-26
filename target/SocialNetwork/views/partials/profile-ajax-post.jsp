<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 09/25/19
  Time: 1:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<c:forEach items="${ajaxPosts}" var="aPost">
<div class="panel panel-default userPost">
    <div class="panel-thumbnail"><img src="resources/img/bg_5.jpg" class="img-responsive" style="height: 300px!important;"></div>
    <div class="panel-body">
        <p class="lead">sagar ghimire</p>
        <p>27 September, 2019</p>
        <hr>
        ${aPost.postBody}
    </div>
</div>
</c:forEach>