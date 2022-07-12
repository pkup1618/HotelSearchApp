<html>
<head>
    <meta name="layout" content="main"/>
    <asset:stylesheet src="custom-style.css"/>
    <title>Поисковая страница</title>
</head>
<body>

<div id="content" role="main">
    <section class="row colset-2-its">
        <h1>Welcome to our Search Page!</h1>
    </section>
</div>

<div>
    <g:form action="search" method="GET"> <!-- request params here -->
        <g:textField name="hotelNameSubstring"/>
        <g:select name="countryId" from="${countries}" optionValue="name" optionKey="id"/>
        <input type="submit">
    </g:form>

    <form action="/hotel">
        <button type="submit">Справочник отелей</button>
    </form>
    <br>
    <form action="/country">
        <button type="submit">Справочник стран</button>
    </form>
</div>

</body>
</html>