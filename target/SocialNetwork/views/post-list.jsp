<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 09/23/19
  Time: 12:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Facebook Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link href="resources/css/bootstrap.css" rel="stylesheet"/>
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link href="resources/css/facebook.css" rel="stylesheet"/>
</head>

<body>

<div class="wrapper">
    <div class="box">
        <div class="row row-offcanvas row-offcanvas-left">
            <!-- sidebar -->
            <%@ include file="partials/leftsidebar.jsp" %>
            <!-- /sidebar -->
            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">
                <!-- top nav -->
                <%@ include file="partials/topnav.jsp" %>
                <!-- /top nav -->

                <div class="padding">
                    <div class="full col-sm-9">

                        <!-- content -->
                        <div class="row">

                            <!-- main col left -->
                            <div class="col-sm-10">

                                <div class="well">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th scope="col">SN.</th>
                                            <th scope="col">Posted By</th>
                                            <th scope="col">Body</th>
                                            <th scope="col">Image</th>
                                            <th scope="col">Status</th>
                                            <th scope="col">Action</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${postList}" var="post" varStatus="loop">
                                            <tr>
                                                <th>${loop.index+1}</th>
                                                <td>${post.user.firstName} ${post.user.lastName}</td>
                                                <td>${post.postBody}</td>
                                                <td><img src="resources/fileUpload/${post.postImage}"></td>
                                                <td>${post.status}</td>
                                                <td>
                                                 <c:choose>
                                                     <c:when test="${post.status == true }">
                                                         <form action="editPost" method="post">
                                                             <input type="hidden" name="postId" value="${post.postId}">
                                                             <input type="hidden" name="status" value="false">
                                                             <input type="submit" class="btn btn-danger" value="Deactivate">
                                                         </form>
                                                     </c:when>
                                                     <c:otherwise>
                                                         <form action="editPost" method="post">
                                                             <input type="hidden" name="postId" value="${post.postId}">
                                                             <input type="hidden" name="status" value="true">
                                                             <input type="submit" class="btn btn-success" value="Activate">
                                                         </form>
                                                     </c:otherwise>
                                                 </c:choose>   

                                                </td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>

                            </div>

                            <!-- main col right -->
                            <div class="col-sm-2">
                                <div class="well">
                                </div>
                            </div>

                        </div><!--/row-->

                        <%@ include file="partials/footer.jsp" %>

                    </div><!-- /col-9 -->
                </div><!-- /padding -->
            </div>
            <!-- /main -->

        </div>
    </div>
</div>


<!--post modal-->
<%@ include file="partials/postmodal.jsp" %>

<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('[data-toggle=offcanvas]').click(function() {
            $(this).toggleClass('visible-xs text-center');
            $(this).find('i').toggleClass('glyphicon-chevron-right glyphicon-chevron-left');
            $('.row-offcanvas').toggleClass('active');
            $('#lg-menu').toggleClass('hidden-xs').toggleClass('visible-xs');
            $('#xs-menu').toggleClass('visible-xs').toggleClass('hidden-xs');
            $('#btnShow').toggle();
        });
    });
</script>
</body>
</html>
