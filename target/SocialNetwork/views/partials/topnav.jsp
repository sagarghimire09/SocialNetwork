<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 09/22/19
  Time: 11:05 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="navbar navbar-blue navbar-static-top">
    <div class="navbar-header">
        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a href="home" class="navbar-brand logo">b</a>
    </div>
    <nav class="collapse navbar-collapse" role="navigation" style="background-color: mediumpurple;">
        <form class="navbar-form navbar-left">
            <div class="input-group input-group-sm" style="max-width:360px;">
                <input class="form-control" placeholder="Search" name="srch-term" id="srch-term" type="text">
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                </div>
            </div>
        </form>
        <ul class="nav navbar-nav">
            <li>
                <a href="home"><i class="glyphicon glyphicon-home"></i> Home</a>
            </li>
            <li>
                <a href="#" onclick="return false;" role="button" data-toggle="dropdown" id="dropdownMenu1" data-target="#" style="float: left" aria-expanded="true">
                    <i class="fa fa-bell-o" style="font-size: 20px; float: left; color: black">
                    </i>
                </a>
                <span class="badge badge-danger">6</span>
                <ul class="dropdown-menu dropdown-menu-left pull-right" role="menu" aria-labelledby="dropdownMenu1">
                    <li role="presentation">
                        <a href="#" class="dropdown-menu-header">Notifications</a>
                    </li>
                    <ul class="timeline timeline-icons timeline-sm" style="margin:10px;width:210px">
                        <li>
                            <p>
                                Your “Volume Trendline” PDF is ready <a href="">here</a>
                                <span class="timeline-icon"><i class="fa fa-file-pdf-o" style="color:red"></i></span>
                                <span class="timeline-date">Dec 10, 22:00</span>
                            </p>
                        </li>
                        <li>
                            <p>
                                Your “Marketplace Report” PDF is ready <a href="">here</a>
                                <span class="timeline-icon"><i class="fa fa-file-pdf-o"  style="color:red"></i></span>
                                <span class="timeline-date">Dec 6, 10:17</span>
                            </p>
                        </li>
                        <li>
                            <p>
                                Your “Top Words” spreadsheet is ready <a href="">here</a>
                                <span class="timeline-icon"><i class="fa fa-file-excel-o"  style="color:green"></i></span>
                                <span class="timeline-date">Dec 5, 04:36</span>
                            </p>
                        </li>
                    </ul>
                    <li role="presentation">
                        <a href="#" class="dropdown-menu-header"></a>
                    </li>
                </ul>




<%--                <%@ include file="views/partials/notification.jsp" %>--%>
            </li>
<%--            <li>--%>
<%--                <a href="#"><span class="badge">badge</span></a>--%>
<%--            </li>--%>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="glyphicon glyphicon-user"></i></a>
                <ul class="dropdown-menu">
                    <li><a href="profile">Profile</a></li>
                    <li><a href="logout">Logout</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>
