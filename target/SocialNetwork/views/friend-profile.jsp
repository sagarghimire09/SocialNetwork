<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 09/24/19
  Time: 10:15 PM
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
            <div class="column ${not empty divcol ? divcol : 'col-sm-12'} col-xs-11" id="main">
                <!-- top nav -->
                <%@ include file="partials/topnav.jsp" %>
                <!-- /top nav -->

                <div class="padding">
                    <div class="full col-sm-9">

                        <!-- content -->
                        <div class="row">
                            <%-- added--%>
                            <div class="timeline-cover" style="margin-bottom: 20px;!important;">
                                <!--Timeline Menu for Large Screens-->
                                <div class="timeline-nav-bar hidden-sm hidden-xs">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="profile-info">
                                                <img src="resources/img/user.jpg" alt="" class="img-responsive profile-photo">
                                            </div>
                                        </div>
                                        <div class="col-md-9">
                                            <div class="col-md-6">
                                                <h3>${friendUser.firstName} ${friendUser.lastName}</h3>
                                                <p class="text-muted">${friendUser.designation}</p>
                                                <ul class="list-inline profile-menu">
                                                    <li>Works on - ${friendUser.workplace}</li>
                                                </ul>
                                                <ul class="follow-me list-inline">
                                                    <li>${friendUser.getFollowers().size()} people following <c:choose><c:when test="${friendUser.gender == 'male'}">Him</c:when>
                                                        <c:otherwise>Her</c:otherwise></c:choose></li>
                                                    <li>
                                                    <c:if test="${friendUser.userId != loggedInUserId}">
<%--                                                    <c:choose>--%>
<%--                                                        <c:when test="${friendUser.getFollowers().contains(loggedInUser)}">--%>
                                                            <form action="unfollow" method="post">
                                                                <input type="hidden" name="userId" value="${loggedInUserId}">
                                                                <input type="hidden" name="followingId" value="${friendUser.userId}">
                                                                <button class="btn btn-warning" type="submit">Unfollow</button>
                                                            </form>
<%--                                                        </c:when>--%>
<%--                                                        <c:otherwise>--%>
                                                            <form action="follow" method="post">
                                                                <input type="hidden" name="userId" value="${loggedInUserId}">
                                                                <input type="hidden" name="followingId" value="${friendUser.userId}">
                                                                <button class="btn btn-primary" type="submit">Follow</button>
                                                            </form>
<%--                                                        </c:otherwise>--%>
<%--                                                    </c:choose>--%>
                                                    </c:if>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="col-md-3">
<%--                                                <div style="margin: 10px;"><a href="follower" class="btn btn-success">Followers</a></div>--%>
                                                <div style="margin: 10px;"><a href="#" class="btn btn-primary">About</a></div>
<%--                                                <div style="margin: 10px;"><a href="profile-edit" class="btn btn-warning">Edit</a></div>--%>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--Timeline Menu for Large Screens End-->
                            </div>
                            <hr>
                            <!-- main col left -->
                            <div class="col-sm-7">
                            <c:forEach items="${friendPosts}" var="fPost">
                                <div class="panel panel-default">
                                    <div class="panel-thumbnail"><img src="resources/img/bg_5.jpg" class="img-responsive" style="height: 300px!important;"></div>
                                    <div class="panel-body">
                                        <p class="lead">${friendUser.firstName} ${friendUser.lastName}</p>
                                        <p>27 September, 2019</p>
                                        <hr>
                                        ${fPost.postBody}
                                    </div>
                                </div>
                            </c:forEach>
                            </div>

                            <!-- main col right -->
                            <div class="col-sm-5">

                                <div class="well">
                                    <form class="form">
                                        <h4>Sign-up</h4>
                                        <div class="input-group text-center">
                                            <input class="form-control input-lg" placeholder="Enter your email address" type="text">
                                            <span class="input-group-btn"><button class="btn btn-lg btn-primary" type="button">OK</button></span>
                                        </div>
                                    </form>
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
