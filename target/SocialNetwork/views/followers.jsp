<%--
  Created by IntelliJ IDEA.
  User: yubak
  Date: 9/25/2019
  Time: 11:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: Yubraj
  Date: 09/23/19
  Time: 11:32 PM
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

                        <!--Timeline Menu for Large Screens End-->
                    </div>
                    <%--                            end added--%>
                    <!-- main col left -->
                    <div class="col-sm-7">
                        <div class="row bootstrap snippet">
                            <div class="col-md-6 col-xs-12 col-md-offset-3">
                                <div class="panel" id="followers">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">
                                            <i class="icon md-check" aria-hidden="true"></i> Followers
                                        </h3>
                                    </div>
                                    <div class="panel-body">
                                        <ul class="list-group list-group-dividered list-group-full">
                                            <li class="list-group-item">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <a class="avatar avatar-online" href="javascript:void(0)">
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                                                            <i></i>
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="pull-right">
                                                            <button type="button" class="btn btn-info btn-sm waves-effect waves-light">Follow</button>
                                                        </div>
                                                        <div><a class="name" href="javascript:void(0)">Willard Wood</a></div>
                                                        <small>@heavybutterfly920</small>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <a class="avatar avatar-away" href="javascript:void(0)">
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                                                            <i></i>
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="pull-right">
                                                            <button type="button" class="btn btn-success btn-default btn-sm waves-effect waves-light"><i class="icon md-check" aria-hidden="true"></i>Following</button>
                                                        </div>
                                                        <div><a class="name" href="javascript:void(0)">Ronnie Ellis</a></div>
                                                        <small>@kingronnie24</small>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <a class="avatar avatar-busy" href="javascript:void(0)">
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                                                            <i></i>
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="pull-right">
                                                            <button type="button" class="btn btn-info btn-sm waves-effect waves-light">Follow</button>
                                                        </div>
                                                        <div><a class="name" href="javascript:void(0)">Gwendolyn Wheeler</a></div>
                                                        <small>@perttygirl66</small>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="list-group-item">
                                                <div class="media">
                                                    <div class="media-left">
                                                        <a class="avatar avatar-off" href="javascript:void(0)">
                                                            <img src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                                                            <i></i>
                                                        </a>
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="pull-right">
                                                            <button type="button" class="btn btn-info btn-sm waves-effect waves-light">Follow</button>
                                                        </div>
                                                        <div><a class="name" href="javascript:void(0)">Daniel Russell</a></div>
                                                        <small>@danieltiger08</small>
                                                    </div>
                                                </div>
                                            </li>
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
<div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                Update Status
            </div>
            <div class="modal-body">
                <form class="form center-block">
                    <div class="form-group">
                        <textarea class="form-control input-lg" autofocus="" placeholder="What do you want to share?"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <div>
                    <button class="btn btn-primary btn-sm" data-dismiss="modal" aria-hidden="true">Post</button>
                    <ul class="pull-left list-inline"><li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li><li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
                </div>
            </div>
        </div>
    </div>
</div>

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

