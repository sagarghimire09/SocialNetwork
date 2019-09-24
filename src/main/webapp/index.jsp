<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 09/21/19
  Time: 5:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>MUM Social</title>
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
            <%@ include file="views/partials/leftsidebar.jsp" %>
            <!-- /sidebar -->

            <!-- main right col -->
            <div class="column col-sm-10 col-xs-11" id="main">

                <!-- top nav -->
                <%@ include file="views/partials/topnav.jsp" %>
                <!-- /top nav -->

                <div class="padding">
                    <div class="full col-sm-9">

                        <!-- content -->
                        <div class="row">

                            <!-- main col left -->
                            <div class="col-sm-5">

                                <div class="well">
                                    <form class="form-horizontal" role="form">
                                        <h4>What's New</h4>
                                        <div class="form-group" style="padding:14px;">
                                            <textarea class="form-control" rows="4" placeholder="Update your status"></textarea>
                                        </div>
                                        <button class="btn btn-primary pull-right" type="button">Post</button>
                                        <ul class="list-inline">
                                            <li><a href=""><i class="glyphicon glyphicon-upload"></i></a></li>
                                            <li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li>
                                            <li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li>
                                        </ul>
                                    </form>
                                </div>

                                <div class="panel panel-default">
                                    <p>
                                        <span class="img-span">
                                            <img src="resources/img/TM.jpg" class="img-display"> <a href="#">Chinedu Ugwu</a>
                                        </span>
                                    </p>

                                    <div class="panel-thumbnail"><img src="resources/img/TM.jpg" class="img-responsive">
                                    </div>

                                    <div class="panel-body">
                                        <p> Design, build, test, and prototype
                                            using Bootstrap in real-time from your Web browser. Bootply combines the
                                            power of hand-coded HTML, CSS and JavaScript with the benefits of
                                            responsive design using Bootstrap. Find and showcase Bootstrap-ready
                                            snippets in the 100% free Bootply.com code repository.
                                            <a href="#" style="text-decoration: underline; color: #0db332;">read more...</a>
                                        </p>
                                    </div>
                                </div>

                                <div class="panel panel-default">
                                    <p>
                                        <span class="img-span">
                                            <img src="resources/img/TM.jpg" class="img-display"> <a href="#">Chinedu Ugwu</a>
                                        </span>
                                    </p>

                                    <div class="panel-thumbnail"><img src="resources/img/TM.jpg" class="img-responsive">
                                    </div>

                                    <div class="panel-body">
                                        <p> Design, build, test, and prototype
                                            using Bootstrap in real-time from your Web browser. Bootply combines the
                                            power of hand-coded HTML, CSS and JavaScript with the benefits of
                                            responsive design using Bootstrap. Find and showcase Bootstrap-ready
                                            snippets in the 100% free Bootply.com code repository.
                                            <a href="#" style="text-decoration: underline; color: #0db332;">read more...</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <p>
                                        <span class="img-span">
                                            <img src="resources/img/TM.jpg" class="img-display"> <a href="#">Chinedu Ugwu</a>
                                        </span>
                                    </p>

                                    <div class="panel-thumbnail"><img src="resources/img/TM.jpg" class="img-responsive">
                                    </div>

                                    <div class="panel-body">
                                        <p> Design, build, test, and prototype
                                            using Bootstrap in real-time from your Web browser. Bootply combines the
                                            power of hand-coded HTML, CSS and JavaScript with the benefits of
                                            responsive design using Bootstrap. Find and showcase Bootstrap-ready
                                            snippets in the 100% free Bootply.com code repository.
                                            <a href="#" style="text-decoration: underline; color: #0db332;">read more...</a>
                                        </p>
                                    </div>
                                </div>

                            </div>

                            <!-- main col right -->
                            <div class="col-sm-3">

                                <div class="panel panel-default">
                                    <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Bootply
                                        Editor &amp; Code Library</h4></div>
                                    <div class="panel-body">
                                        <p><img src="resources/img/150x150.gif" class="img-circle pull-right"> <a
                                                href="#">The Bootstrap Playground</a></p>
                                        <div class="clearfix"></div>
                                        <hr>
                                        Design, build, test, and prototype
                                        using Bootstrap in real-time from your Web browser. Bootply combines the
                                        power of hand-coded HTML, CSS and JavaScript with the benefits of
                                        responsive design using Bootstrap. Find and showcase Bootstrap-ready
                                        snippets in the 100% free Bootply.com code repository.
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading"><a href="#" class="pull-right">View all</a> <h4>Bootply
                                        Editor &amp; Code Library</h4></div>
                                    <div class="panel-body">
                                        <p><img src="resources/img/150x150.gif" class="img-circle pull-right"> <a
                                                href="#">The Bootstrap Playground</a></p>
                                        <div class="clearfix"></div>
                                        <hr>
                                        Design, build, test, and prototype
                                        using Bootstrap in real-time from your Web browser. Bootply combines the
                                        power of hand-coded HTML, CSS and JavaScript with the benefits of
                                        responsive design using Bootstrap. Find and showcase Bootstrap-ready
                                        snippets in the 100% free Bootply.com code repository.
                                    </div>
                                </div>

                            </div>

                            <div class="col-sm-1"></div>

                            <div class="col-sm-3">

                                <p>
                                        <span class="img-span">
                                            <img src="resources/img/TM.jpg" class="img-display"> <a href="#">Chinedu Ugwu</a>
                                        </span>
                                    <span aria-label="Active Now " class="active-now">
                                    </span>
                                </p>
                                <p>
                                        <span class="img-span">
                                            <img src="resources/img/TM.jpg" class="img-display"> <a href="#">Chinedu Ugwu</a>
                                        </span>
                                </p>
                                <p>
                                        <span class="img-span">
                                            <img src="resources/img/TM.jpg" class="img-display"> <a href="#">Chinedu Ugwu</a>
                                        </span>
                                    <span aria-label="Active Now " class="active-now">
                                    </span>
                                </p>
                                <p>
                                        <span class="img-span">
                                            <img src="resources/img/TM.jpg" class="img-display"> <a href="#">Chinedu Ugwu</a>
                                        </span>
                                    <span aria-label="Active Now " class="active-now">
                                    </span>
                                </p>
                            </div>
                        </div><!--/row-->

                        <%@ include file="views/partials/footer.jsp" %>
                    </div><!-- /col-9 -->
                </div><!-- /padding -->
            </div>
            <!-- /main -->

        </div>
    </div>
</div>


<!--post modal-->
<%@ include file="views/partials/postmodal.jsp" %>

<script type="text/javascript" src="resources/js/jquery.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('[data-toggle=offcanvas]').click(function () {
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
