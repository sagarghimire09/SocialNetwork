<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 09/22/19
  Time: 11:21 PM
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
                                                <img src="resources/img/user.jpg" alt="" class="profile-photo">
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


                                    <form>
                                        <div class="form-group">
                                            <label for="exampleInputFname">First Name</label>
                                            <input type="text" class="form-control" id="exampleInputFname" name="firstName"  placeholder="Enter First Name">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputLastName">Last Name</label>
                                            <input type="text" class="form-control" id="exampleInputLastName" name="lastName"  placeholder="Enter Last Name">
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputWorkplace">WorkPlace</label>
                                            <input type="text" class="form-control" id="exampleInputWorkplace" name="workplace"  placeholder="Enter Your Workplace">
                                        </div>
                                        <div class="form-group" >
                                            <label for="exampleInputDesignation">Designation</label>
                                            <input type="text" class="form-control" id="exampleInputDesignation" name="designation"  placeholder="Enter your Position">
                                        </div>
                                        <div class="form-group row">
                                            <label for="exampleInputDate" class="col-2 col-form-label">Date Of Birth</label>
                                            <div class="col-10">
                                                <input class="form-control" type="date" name="birthDate" id="exampleInputDate">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputUploadPhoto">Upload Picture</label>
                                            <input type="file" class="form-control-file" name="profilePicture" id="exampleInputUploadPhoto">
                                        </div>

                                        <div class="form-check form-check-inline">
                                            <label for="inlineRadio1">Gender</label>
                                            <input class="form-check-input" type="radio" name="gender" id="inlineRadio1">
                                            <label class="form-check-label" for="inlineRadio1">Male</label>

                                            <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="option2">
                                            <label class="form-check-label" for="inlineRadio2">Female</label>
                                        </div>
                                        <button type="submit" class="btn btn-primary">Update Profile</button>
                                    </form>

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
