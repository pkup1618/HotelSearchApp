<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <asset:stylesheet src="custom-style.css"/>
        <title>Справочник стран</title>
    </head>
    <body>
    <h1>В систему заведено ${countries.size()} страны</h1>
    <br>
    <br>
    <table>
        <tr>
            <th>Название</th>
            <th>Столица</th>
            <th>Отредактировать</th>
            <th>Удалить</th>
            <th>Посмотреть</th>
        </tr>
        <g:each in="${countries}" var="country">
            <tr>
                <td>${country.name}</td>
                <td>${country.capital}</td>
                <td>
                <p><g:link controller="country" action="edit" method="POST" params="[id: country.id]">Изменить</g:link></p>
                </td>
                <td>
                <p><g:link controller="country" action="delete" method="GET" params="[id: country.id]">Удалить</g:link></p>
                </td>
                <td>
                <p><g:link controller="country"  action="show" method="GET" params="[id: country.id]">Посмотреть</g:link></p>
                </td>
            </tr>
        </g:each>

    </table>
    <br>
    <p><g:link controller="country" action="create" method="POST">Внести страну</g:link></p>
    <br>
    <p><g:link controller="search"  action="index" method="GET">Вернуться на страницу поиска</g:link></p>
    </body>
</html>