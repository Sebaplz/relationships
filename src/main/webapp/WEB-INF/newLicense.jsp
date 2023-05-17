<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<div class="container mt-5">
 <div class="d-flex justify-content-end">
        <a href="/" class="ms-3 fs-3">Dashboard</a>
    </div>
    <form:form action="/licenses/new" method="post" modelAttribute="license" class="mt-5">
            <p class="d-flex justify-content-between mx-3">
                <form:label path="person" class="fs-5">Person:</form:label>
                <form:errors path="person" class="text-danger"/>
                <form:select path="person">
                    <c:forEach items="${personas}" var="p">
                        <form:option value="${p.id}">${p.firstName} ${p.lastName}</form:option>
                    </c:forEach>
                </form:select>
            </p>
            <p class="d-flex justify-content-between mx-3">
                <form:label path="state" class="fs-5">State:</form:label>
                <form:errors path="state" class="text-danger"/>
                <form:input path="state"/>
            </p>
            <p class="d-flex justify-content-between mx-3">
                <form:label path="expirationDate" class="fs-5">Expiration Date:</form:label>
                <form:errors path="expirationDate" class="text-danger"/>
                <form:input type="date" path="expirationDate"/>
            </p>
            <div class="d-flex justify-content-end me-3">
                <input type="submit" value="Create" class="btn btn-primary"/>
            </div>
        </form:form>
    </div>
</div>

