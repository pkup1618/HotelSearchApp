<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <asset:stylesheet src="custom-style.css"/>
        <title>Страна</title>
    </head>
    <body>
    <h3>Название: ${country.name}</h3>
    <br>
    <h3>Столица: ${country.capital}</h3>
    <br>
    <p><g:link controller="country" action="index" method="GET">Все страны</g:link></p>
    <br>
    <p><g:link controller="country" action="edit" method="GET" id="${country.id}">Изменить</g:link></p>
    <br>
    <p><g:link controller="country" action="delete" method="GET" id="${country.id}">Удалить</g:link></p>
    </body>
</html>
