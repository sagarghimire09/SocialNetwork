<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 09/21/19
  Time: 5:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="resources/css/main.css" type="text/css" rel="stylesheet" />
    <link href="resources/css/util.css" type="text/css" rel="stylesheet">
</head>
<body>

<div class="limiter">
    <div class="container-login100" style="background: #eae5f3">
        <div class="wrap-login100">
            <form action="login" method="post" class="login100-form validate-form p-l-55 p-r-55 p-t-178">
					<span class="login100-form-title">
						Social Network
					</span>
                <c:if test="${not empty errMsg}">
                    <p class="error">${errMsg}</p>
                </c:if>
                <div class="wrap-input100 validate-input m-b-16" data-validate="Please enter username">
                    <input class="input100" type="email" name="email" placeholder="Your Email" required>
                    <span class="focus-input100"></span>
                </div>

                <div class="wrap-input100 validate-input" data-validate = "Please enter password">
                    <input class="input100" type="password" name="password" placeholder="Password" required>
                    <span class="focus-input100"></span>
                </div>

                <div class="text-right p-t-13 p-b-23">
						<span class="txt1">
							Forgot
						</span>

                    <a href="#" class="txt2">
                        Password?
                    </a>
                </div>

                <div class="container-login100-form-btn">
                    <button class="login100-form-btn" type="submit">
                        Sign in
                    </button>
                </div>

                <div class="flex-col-c p-t-170 p-b-40">
						<span class="txt1 p-b-9">
							Don’t have an account?
						</span>

                    <a href="register" class="txt3">
                        Sign up now
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>

<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
<script type="text/javascript">
    $('form').validate();
</script>

</body>
</html>