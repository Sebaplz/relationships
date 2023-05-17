<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<div class="container mt-5">
    <div class="d-flex justify-content-around mb-3">
        <a href="/persons/new" class="mt-2">New Person</a>
        <a href="/licenses/new" class="mt-2">New License</a>
    </div>
    <div>
        <table class="table table-striped border border-1">
            <thead>
                <tr class="table-secondary">
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">License #</th>
                    <th scope="col">State</th>
                    <th scope="col">Expiration Date</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${allPersons}" var="person">
                <tr>
                    <td><a href="/persons/${person.id}"><c:out value="${person.firstName}"/></a></td>
                    <td><c:out value="${person.lastName}"/></td>
                    <td><c:out value="${person.license.number}"/></td>
                    <td><c:out value="${person.license.state}"/></td>
                    <td><c:out value="${person.license.expirationDate}"/></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

