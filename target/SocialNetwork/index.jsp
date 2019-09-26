<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
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

                                <div class="well" style="overflow:auto;">
                                    <form class="form-horizontal" action="home" enctype="multipart/form-data"
                                          method="post" role="form">
                                        <h4>create a post</h4>
                                        <div class="form-group" style="padding:14px;">
                                            <textarea name="postBody" class="form-control" rows="4"
                                                      placeholder="Update your status"></textarea>
                                        </div>
                                        <div>
                                            <ul class="list-inline" style="position: relative">
                                                <li><a href="">
                                                    <input type="file"
                                                           class="" title="Choose a file to upload"
                                                           name="imagePath"
                                                           accept="video/*,  video/x-m4v, video/webm, video/x-ms-wmv,
                                                       video/x-msvideo, video/3gpp, video/flv, video/x-flv, video/mp4,
                                                       video/quicktime, video/mpeg, video/ogv, .ts, .mkv, image/*,
                                                       image/heic, image/heif"
                                                           multiple="1"
                                                           aria-label="Photo/Video" id="upload">
                                                </a>
                                                </li>

                                            </ul>
                                        </div>

                                        <div>
                                            <input class="btn btn-primary pull-right" type="submit" value="Post"/>
                                        </div>

                                    </form>
                                </div>

                                <c:forEach var="post" items="${relatedPosts}" varStatus="counter">

                                    <div class="panel panel-default">
                                        <p>
                                        <span class="img-span">
                                            <img src="resources/img/TM.jpg" class="img-display"> <a
                                                href="#">${post.user.firstName} ${post.user.lastName}</a>
                                        </span>
                                            <span style="display: block; margin: 2%">
                                                    ${localDateTimeFormat.parse(post.createdAt)}
                                            </span>
                                        </p>


                                        <div class="panel-body">
                                            <p>
                                                    ${post.postBody}
                                            </p>
                                        </div>

                                        <c:if test="${post.imageName != 'noName.gif'}">
                                            <div class="panel-thumbnail">
                                                <img src="getImage.jsp?postId=${post.postId}" class="img-responsive">
                                            </div>
                                        </c:if>
                                    </div>
                                </c:forEach>
                            </div>

                            <!-- main col right -->
                            <div class="col-sm-3">

                                <c:forEach var="advert" items="${adverts}" varStatus="counterr">

                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <p>
                                                    ${advert.adsBody}
                                            </p>
                                            <div class="clearfix"></div>
                                            <hr>
                                            <p>
                                                <a href="${advert.adsLink}" target="_blank">
                                                    <img src="resources/img/bg_5.jpg"
                                                         style="width: 200px; height: 100px;">
                                                </a>
                                            </p>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>

                            <div class="col-sm-1"></div>

                            <div class="col-sm-3">

                                <c:forEach var="follower" items="${loggedInUser.followers}" varStatus="countt">

                                        <span class="img-span">
                                            <img src="resources/img/TM.jpg" class="img-display">
                                            <a href="#">${follower.firstName} ${follower.lastName}</a>
                                        </span>



                                </c:forEach>


                                <c:forEach var="active" items="activeUsers" varStatus="counterrr">
                                    <c:if test="${follower.userId == active}">
                                        <span aria-label="Active Now " class="active-now"></span>
                                    </c:if>

                                    <c:if test="${follower.userId != active}">
                                        <span aria-label="Active Now " class="not-active"></span>
                                    </c:if>
                                </c:forEach>


                                      <span class="img-span">
                                            <img src="resources/img/TM.jpg" class="img-display">
                                            <a href="#">Chinedu Ugwu</a>
                                        </span>
                                   <span aria-label="Active Now " class="active-now"></span>


                            </div>
                        </div><!--/row-->

                        <%@ include file="views/partials/footer.jsp" %>
                    </div><!-- /col-9 -->
                </div><!-- /padding -->
            </div>
            <%@ include file="views/partials/postmodal.jsp" %>

            <script type="text/javascript" src="resources/js/jquery.js"></script>
            <script type="text/javascript" src="resources/js/bootstrap.js"></script>
            <script src="resources/js/index.js" type="text/javascript"></script>
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
