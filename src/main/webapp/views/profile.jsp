<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 09/22/19
  Time: 9:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<%--
    if(session.getAttribute("email") == null){
        response.sendRedirect("login.jsp");
    }
--%>
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
<%--                            added--%>
                            <div class="timeline-cover">
                                <!--Timeline Menu for Large Screens-->
                                <div class="timeline-nav-bar hidden-sm hidden-xs">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div class="profile-info">
                                                <img src="resources/img/user.jpg" alt="" class="img-responsive profile-photo">
                                                <h3>Sarah Cruiz</h3>
                                                <p class="text-muted">Creative Director</p>
                                            </div>
                                        </div>
                                        <div class="col-md-9">
                                            <ul class="list-inline profile-menu">
                                                <li><a href="timeline.html" class="active">Timeline</a></li>
                                                <li><a href="timeline-about.html">About</a></li>
                                                <li><a href="profile-edit">Edit</a></li>
                                                <li><a href="timeline-friends.html">Friends</a></li>
                                            </ul>
                                            <ul class="follow-me list-inline">
                                                <li>1,299 people following her</li>
                                                <li><button class="btn-primary">Follow Her</button></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <!--Timeline Menu for Large Screens End-->
                            </div>
<%--                            end added--%>
                            <!-- main col left -->
                            <div class="col-sm-7">

                                <div class="well">
                                    <form class="form-horizontal" role="form" action="post/newPost" method="post" enctype="multipart/form-data">
                                        <h4>What's New</h4>
                                        <div class="form-group" style="padding:14px;">
                                            <textarea class="form-control" name="body" placeholder="Update your status"></textarea>
                                        </div>
                                        <button class="btn btn-primary pull-right" type="submit">Post</button>
                                        <ul class="list-inline"><li><label for="file-upload" class="custom-file-upload"><i class="glyphicon glyphicon-upload"></i></label><input id="file-upload" type="file" name="image"/></li>
                                        <li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
                                    </form>
                                </div>

                                <div class="panel panel-default">
                                    <div class="panel-thumbnail"><img src="resources/img/bg_5.jpg" class="img-responsive"></div>
                                    <div class="panel-body">
                                        <p class="lead">Urbanization</p>
                                        <p>27 September, 2019</p>
                                        <hr>
                                        Design, build, test, and prototype
                                        using Bootstrap in real-time from your Web browser. Bootply combines the
                                        power of hand-coded HTML, CSS and JavaScript with the benefits of
                                        responsive design using Bootstrap. Find and showcase Bootstrap-ready
                                        snippets in the 100% free Bootply.com code repository.
                                    </div>
                                </div>
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

