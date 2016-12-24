<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<head>
    <title>Log in with your account</title>
</head>

<body>
<div>
    <form method="POST" action="${contextPath}/login">
        <h2>Log in</h2>

        <div>
            <span>${message}</span><br>
            <input name="username" type="text" placeholder="Username" autofocus="true"/><br>
            <input name="password" type="password" placeholder="Password"/><br>
            <label for="remember-me">Remember me</label>
            <input type="checkbox" name="remember-me" id="remember-me"/><br>
            <span>${error}</span><br>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <button type="submit">Log In</button>
            <h4><a href="${contextPath}/registration">Create an account</a></h4>
        </div>
    </form>
</div>
</body>
</html>
