<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!doctype html>
<head>
    <title>Welcome</title>
    <style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 50%;
    }

    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    tr:nth-child(even) {
        background-color: #dddddd;
    }
    </style>
</head>

<body>
<div>
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>

        <h2>
            Welcome ${pageContext.request.userPrincipal.name} |
            <a href='javascript:;' onclick="document.forms['logoutForm'].submit()">Logout</a>
        </h2>
    </c:if>

    <h2>Users</h2>
    <table>
      <tr>
        <th>Username</th>
        <th>Roles</th>
      </tr>

      <c:forEach var="user" items="${users}">
        <tr>
          <td>
            <c:out value="${user.username}"/>
          </td>
          <td>
            <c:forEach var="role" items="${user.roles}">
              <c:out value="${role.name}"/>
            </c:forEach></td>
          </td>
        </tr>
      </c:forEach>
    </table>
</div>
</body>
</html>
