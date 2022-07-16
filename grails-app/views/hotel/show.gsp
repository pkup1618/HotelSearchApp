<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <asset:stylesheet src="custom-style.css"/>
        <title>Отель</title>
    </head>
    <body>
        <h3>Название: ${hotel.name}</h3>
        <br>
        <h3>Рейтинг: ${hotel.rating}</h3>
        <br>
        <h3>Ссылка: ${hotel.ref}</h3>
        <br>
        <h3>Страна: ${hotel.country.name}</h3>
        <br>
        <p><g:link controller="hotel" action="index" method="GET">Все отели</g:link></p>
        <br>
        <p><g:link controller="hotel" action="edit" method="GET" id="${hotel.id}">Изменить</g:link></p>
        <br>
        <p><g:link controller="hotel" action="delete" method="GET" id="${hotel.id}">Удалить</g:link></p>
    </body>
</html>
