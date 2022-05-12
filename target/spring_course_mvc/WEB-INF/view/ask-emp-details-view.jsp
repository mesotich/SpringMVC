<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!Doctype html>
<html>
<body>
<h2>Dear Employee, enter your details</h2>
<br>
<br>
<form:form action="showDetails" modelAttribute="employee">
    Name<form:input path="name"/>
    <br><br>
    Surname<form:input path="surname"/>
    <br><br>
    Salary<form:input path="salary"/>
    <br><br>
    <INPUT TYPE="submit" value="OK">
</form:form>
<br>
<br>
</body>
</html>
