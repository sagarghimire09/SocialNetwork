<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 09/24/19
  Time: 3:03 PM
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
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
    <link href="resources/css/adform.css" type="text/css" rel="stylesheet" >
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

                        <div class="row">
                            <div class="col-sm-10">

                                <div id="form-main">
                                    <div id="form-div">
                                        <form action="editAds" class="montform" id="reused_form" method="post">
                                            <input type="hidden" name="adsId" value="${ads.adsId}">
                                            <p class="title">
                                                <input name="adsLink" type="text" value="${ads.adsLink}" class="feedback-input" id="title" placeholder="Ads Url" />
                                            </p>
                                            <p class="text">
                                                <textarea name="adsBody" class="feedback-input" id="description" placeholder="Description">${ads.adsBody}</textarea>
                                            </p>
                                            <p class="file">
                                                <input name="adsImage" type="file" id="file" class="feedback-input">
                                            </p>
                                            <p>
                                                <label>Status</label>
                                                <input type="checkbox" name="status" style="margin: 10px" <c:if test="${ads.status == true}">checked</c:if> >
                                            </p>
                                            <div class="submit">
                                                <button type="submit" class="button-blue">SUBMIT</button>
                                                <div class="ease"></div>
                                            </div>
                                        </form>
                                        <%--    <div id="success_message" style="width:100%; height:100%; display:none; "> <h2>Success! Your Message was Sent Successfully.</h2> </div> --%>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <%@ include file="partials/footer.jsp" %>

                    </div><!-- /col-9 -->
                </div><!-- /padding -->
            </div>
            <!-- /main -->

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
