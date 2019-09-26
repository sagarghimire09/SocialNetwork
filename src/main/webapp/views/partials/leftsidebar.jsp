<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 09/22/19
  Time: 11:02 PM
  To change this template use File | Settings | File Templates.
--%>
<c:if test="${loggedInUser.role == 'ROLE_USER'}">
    <div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">

        <ul class="nav">
            <li><a href="#" data-toggle="offcanvas" class="visible-xs text-center"><i class="glyphicon glyphicon-chevron-right"></i></a></li>
        </ul>
        <p>
            <span class="img-span">
                <img src="resources/img/TM.jpg" class="img-display">
                <a href="profile">${loggedInUser.firstName} ${loggedInUser.lastName}</a>
            </span>
        </p>
        <ul class="nav hidden-xs" id="lg-menu">
            <li><a href="profile"><i class="glyphicon glyphicon-user"></i> Profile</a></li>
            <li><a href="follower"><i class="glyphicon glyphicon-paperclip"></i> Followers</a></li>
        </ul>

        <c:if test="${not empty allUserListNotFollowed}">
            <hr><p>All Users</p>
            <c:forEach items="${allUserListNotFollowed}" var="aUser">
                <p>
                    <span class="img-span">
                        <img src="resources/img/TM.jpg" class="img-display">
                        <a href="profile">${aUser.firstName} ${aUser.lastName}</a>
                        <a href="friendProfile?friendId=${aUser.userId}" class="btn btn-success">Follow</a>

                    </span>
                </p>
            </c:forEach>
        </c:if>

        <ul class="list-unstyled hidden-xs" id="sidebar-footer">
            <li>
                <a href="#"><h3>Social</h3> <i class="glyphicon glyphicon-heart-empty"></i> Network</a>
            </li>
        </ul>

    </div>
</c:if>

<c:if test="${loggedInUser.role == 'ROLE_ADMIN'}">
<div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar">

    <ul class="nav">
        <li><a href="#" data-toggle="offcanvas" class="visible-xs text-center"><i class="glyphicon glyphicon-chevron-right"></i></a></li>
    </ul>
                <p>
                    <span class="img-span">
                        <img src="resources/img/TM.jpg" class="img-display">
                        <a href="profile">${loggedInUser.firstName} ${loggedInUser.lastName}</a>
                    </span>
                </p>
    <ul class="nav hidden-xs" id="lg-menu">
        <li><a href="getAds"><i class="glyphicon glyphicon-list-alt"></i> Ads</a></li>
        <li><a href="post"><i class="glyphicon glyphicon-list"></i> Post</a></li>
        <li><a href="user"><i class="glyphicon glyphicon-paperclip"></i> User</a></li>
        <li><a href="profile"><i class="glyphicon glyphicon-user"></i> Profile</a></li>
    </ul>
    <ul class="list-unstyled hidden-xs" id="sidebar-footer">
        <li>
            <a href="#"><h3>Social</h3> <i class="glyphicon glyphicon-heart-empty"></i> Network</a>
        </li>
    </ul>

</div>
</c:if>