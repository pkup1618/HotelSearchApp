<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <asset:stylesheet src="custom-style.css"/>
        <title>Справочник отелей</title>
    </head>
    <body>

    <h1>В систему заведено ${hotels.size()} отелей</h1>
    <br>
    <br>
    <table>
        <tr>
            <th>Название</th>
            <th>Рейтинг</th>
            <th>Страна</th>
            <th>Ссылка на сайт</th>
            <th>Отредактировать</th>
            <th>Удалить</th>
            <th>Посмотреть</th>
        </tr>
        <g:each in="${hotels}" var="hotel">
            <tr>
                <td>${hotel.name}</td>
                <td>${hotel.rating}</td>
                <td>${hotel.country.name}</td>
                <td>${hotel.ref}</td>
                <td>
                    <p><g:link class="link" controller="hotel" action="edit" method="GET" params="[id: hotel.id]">Изменить</g:link></p>
                </td>
                <td>
                    <p><g:link controller="hotel" action="delete" method="GET" params="[id: hotel.id]">Удалить</g:link></p>
                </td>
                <td>
                    <p><g:link controller="hotel"  action="show" method="GET" params="[id: hotel.id]">Посмотреть</g:link></p>
                </td>
            </tr>
        </g:each>

    </table>
    <br>
    <p><g:link controller="hotel"  action="create" method="POST">Внести отель</g:link></p>
    <br>
    <p><g:link controller="search"  action="index" method="GET">Вернуться на страницу поиска</g:link></p>
        </body>
</html>