<html>
<head>
    <meta name="layout" content="main"/>
    <asset:stylesheet src="custom-style.css"/>
    <title>Поиск отелей</title>
</head>
<body>

<div id="content" role="main">
    <section class="row colset-2-its">
        <h1>Поиск отелей</h1>
    </section>
</div>

<div>
    <g:form action="search" method="GET">
        <br>
        <p><g:textField name="hotelNameSubstring"/></p>
        <br>
        <p><g:select name="countryId" from="${countries}" optionValue="name" optionKey="id"/></p>
        <br>
        <br>
        <p><input type="submit"></p>
    </g:form>
    <br>
    <p><g:link controller="hotel" action="index">Справочник отелей</g:link></p>
    <br>
    <p><g:link controller="country" action="index">Справочник стран</g:link></p>
</div>

</body>
</html>