<%--
  Created by IntelliJ IDEA.
  User: Yubraj
  Date: 09/23/19
  Time: 11:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

    <style type="text/css">

        body{
            margin-top:20px;
            background:#eee;
        }

        .avatar {
            position: relative;
            display: inline-block;
            width: 40px;
            white-space: nowrap;
            border-radius: 1000px;
            vertical-align: bottom
        }

        .avatar i {
            position: absolute;
            right: 0;
            bottom: 0;
            width: 10px;
            height: 10px;
            border: 2px solid #fff;
            border-radius: 100%
        }

        .avatar img {
            width: 100%;
            max-width: 100%;
            height: auto;
            border: 0 none;
            border-radius: 1000px
        }

        .avatar-online i {
            background-color: #4caf50
        }

        .avatar-off i {
            background-color: #616161
        }

        .avatar-busy i {
            background-color: #ff9800
        }

        .avatar-away i {
            background-color: #f44336
        }

        .avatar-100 {
            width: 100px
        }

        .avatar-100 i {
            height: 20px;
            width: 20px
        }

        .avatar-lg {
            width: 50px
        }

        .avatar-lg i {
            height: 12px;
            width: 12px
        }

        .avatar-sm {
            width: 30px
        }

        .avatar-sm i {
            height: 8px;
            width: 8px
        }

        .avatar-xs {
            width: 20px
        }

        .avatar-xs i {
            height: 7px;
            width: 7px
        }

        .list-group-item {
            position: relative;
            display: block;
            padding: 10px 15px;
            margin-bottom: -1px;
            background-color: #fff;
            border: 1px solid transparent;
        }

    </style>
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

                            <div class="col-sm-9">
                                <div class="row bootstrap snippet">
                                    <div class="col-md-offset-3">
                                        <div class="panel" id="followers">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">
                                                    <i class="icon md-check" aria-hidden="true"></i> Followers
                                                </h3>
                                            </div>
                                            <div class="panel-body">
                                                <ul class="list-group list-group-dividered list-group-full">
                                                    <c:forEach items="${followers}" var="follower">
                                                    <li class="list-group-item">
                                                        <div class="media">
                                                            <div class="media-left">
                                                                <a class="avatar avatar-online" href="friendProfile?friendId=${follower.userId}">
                                                                    <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                                                                    <i></i>
                                                                </a>
                                                            </div>
                                                            <div class="media-body">
                                                                <div class="pull-right">

                                                                    <c:forEach var="following" items="${followingsId}" >


                                                                        <c:choose>
                                                                            <c:when test="${follower.userId == following}">
                                                                                <form action="follower" method="post">
                                                                                    <input type="hidden" name="userId" value="${loggedInUserId}">
                                                                                    <input type="hidden" name="followingId" value="${follower.userId}">
                                                                                    <button type="submit" class="btn btn-success btn-default btn-sm waves-effect waves-light">
                                                                                        <i class="icon md-check" aria-hidden="true"></i>Unfollow</button>
                                                                                </form>
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                                <form action="follower" method="post">
                                                                                    <input type="hidden" name="userId" value="${loggedInUserId}">
                                                                                    <input type="hidden" name="followingId" value="${follower.userId}">
                                                                                    <button type="submit" class="btn btn-warning btn-default btn-sm waves-effect waves-light">
                                                                                        <i class="icon md-check" aria-hidden="true"></i>Follow</button>
                                                                                </form>
                                                                            </c:otherwise>
                                                                        </c:choose>

                                                                    </c:forEach>


                                                                </div>


                                                                <div><a class="name" href="friendProfile?friendId=${follower.userId}">${follower.firstName} ${follower.lastName}</a></div>
                                                                <small>${follower.email}</small>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
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

