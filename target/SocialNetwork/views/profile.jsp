<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 09/22/19
  Time: 9:18 PM
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
                                                <h3>${user.firstName} ${user.lastName}</h3>
                                                <p class="text-muted">${user.designation}</p>
                                                <ul class="list-inline profile-menu">
                                                    <li>Works on - ${user.workplace}</li>
                                                </ul>
                                                <ul class="list-inline profile-menu">
                                                    <li>Birthday - 27 sept</li>
                                                </ul>
                                                <ul class="follow-me list-inline">
                                                    <li>${user.getFollowers().size()} people following <c:choose><c:when test="${user.gender == 'male'}">Him</c:when>
                                                        <c:otherwise>Her</c:otherwise></c:choose></li>
                                                    <%-- <li><button class="btn-primary">Follow Her</button></li>--%>
                                                </ul>
                                            </div>
                                            <div class="col-md-3">
                                                <c:if test="${user.role != ROLE_ADMIN}">
                                                <div style="margin: 10px;"><a href="follower" class="btn btn-success">Followers</a></div>
                                                </c:if>
                                                <div style="margin: 10px;"><a href="#" class="btn btn-primary">About</a></div>
                                                <div style="margin: 10px;"><a href="profile-edit" class="btn btn-warning">Edit</a></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--Timeline Menu for Large Screens End-->
                            </div>
                            <hr>
                            <!-- main col left -->
                            <div class="col-sm-7">

                                <div class="well">
                                    <form class="form-horizontal" action="savePost" method="post" enctype="multipart/form-data">
                                        <h4>What's New</h4>
                                        <div class="form-group" style="padding:14px;">
                                            <textarea class="form-control" name="postBody" placeholder="Update your status"></textarea>
                                        </div>
                                        <button class="btn btn-primary pull-right" type="submit">Post</button>
                                        <ul class="list-inline"><li><label for="file-upload" class="custom-file-upload"><i class="glyphicon glyphicon-upload"></i></label><input id="file-upload" type="file" name="postImage"/></li>
                                        <li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
                                    </form>
                                </div>
                            <c:forEach items="${userPosts}" var="post">
                                <div class="panel panel-default userPost">
                                    <div class="panel-thumbnail"><img src="resources/img/bg_5.jpg" class="img-responsive" style="height: 300px!important;"></div>
                                    <div class="panel-body">
                                        <p class="lead">${user.firstName} ${user.lastName}</p>
                                        <p>27 September, 2019</p>
                                        <hr>
                                        ${post.postBody}
                                    </div>
                                </div>
                            </c:forEach>
<%--                                <input type="hidden" id="row" value="0">--%>
<%--                                <input type="hidden" id="all" value="1">--%>
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
<script type="text/javascript">
    // $(document).ready(function(){
    //     $(window).scroll(function(){
    //         console.log("inside scroll");
    //         var position = $(window).scrollTop();
    //         var bottom = $(document).height() - $(window).height();
    //         console.log(position);
    //         console.log(bottom);
    //         if( position == bottom ){
    //             var row = Number($('#row').val());
    //             var allcount = Number($('#all').val());
    //             var rowperpage = 1;
    //             row = row + rowperpage;
    //             if(row <= allcount){
    //                 $('#row').val(row);
    //                 $.ajax({
    //                     url: 'profile',
    //                     type: 'post',
    //                     data: {row:row},
    //                     dataType: 'html',
    //                     success: function(response){
    //                         console.log(response);
    //                         $(".userPost:last").after(response).show().fadeIn("slow");
    //                     }
    //                 });
    //             }
    //         }
    //
    //     });
    //
    // });
</script>
</body>
</html>

