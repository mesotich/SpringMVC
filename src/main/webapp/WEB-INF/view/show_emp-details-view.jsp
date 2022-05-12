<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!Doctype html>
<html>
<body>
<h2>Dear Employee, you are welcome!</h2>
<br>
<br>
<br>
<%--Your name: ${param.employeeName}--%>
Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car: ${employee.carBrand}
<br>
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li>${lang}</li>
    </c:forEach>
</ul>
<br>
Phone number: ${employee.phoneNumber}
<br>
E-mail: ${employee.email}
</body>
</html>