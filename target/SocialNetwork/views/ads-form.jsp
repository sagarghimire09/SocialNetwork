<%--
  Created by IntelliJ IDEA.
  User: Yubraj
  Date: 09/23/19
  Time: 11:32 PM
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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Place Your Ads</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <link href="adform.css" type="text/css" rel="stylesheet" >
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

                        <div class="container">
                            <div id="form-main">
                                <div id="form-div">
                                    <form class="montform" id="reused_form" enctype=&quot;multipart/form-data&quot; >
                                        <p class="name">
                                            <input name="name" type="text" class="feedback-input" required placeholder="Name" id="name" />
                                        </p>
                                        <p class="title">
                                            <input name="title" type="text" required class="feedback-input" id="title" placeholder="Title" />
                                        </p>
                                        <p class="text">
                                            <textarea name="description" class="feedback-input" id="description" placeholder="Description"></textarea>
                                        </p>
                                        <p class="file">
                                            <input name="image" type="file" id="file" class="feedback-input">
                                        </p>
                                        <div class="submit">
                                            <button type="submit" class="button-blue">SUBMIT</button>
                                            <div class="ease"></div>
                                        </div>
                                    </form>

                                    <div id="success_message" style="width:100%; height:100%; display:none; "> <h2>Success! Your Message was Sent Successfully.</h2> </div>
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

