<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Результаты поиска</title>
    <asset:stylesheet src="custom-style.css"/>
</head>

<body>
<g:if test="${hotels.empty}">
    <h1>По Вашему запросу ничего не найдено</h1>
</g:if>
<g:else>
    <h1>По Вашему запросу найдено ${hotels.size()} результатов</h1>
    <table>
        <tr>
            <th>Название</th>
            <th>Звёздность</th>
        </tr>
        <g:each in="${hotels}" var="hotel">
            <tr>
                <td>${hotel.name}
                    <g:if test="${hotel.ref != null}">
                        <br>
                        <a href="${hotel.ref}" target="_blank">Перейти на сайт</a>
                    </g:if>
                </td>

                <td>${hotel.rating}</td>
            </tr>
        </g:each>
    </table>
    <br>
</g:else>

<form action="/search">
    <button type="submit">Новый поиск</button>
</form>
</body>
</html>