<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<div class="container mt-5">
    <h1 class="mb-3"><c:out value="${persona.firstName} ${persona.lastName}"/></h1>
    <p>License Number: <c:out value="${persona.license.number}"/></p>
    <p>State: <c:out value="${persona.license.state}"/></p>
    <p>Expiration Date: <c:out value="${persona.license.expirationDate}"/></p>
    <a href="/">Volver atras</a>
</div>

