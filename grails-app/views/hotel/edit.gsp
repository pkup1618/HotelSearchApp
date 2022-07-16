<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <asset:stylesheet src="custom-style.css"/>
        <title>Отредактировать отель</title>
    </head>
    <body>

    <h3>Отредактируйте отель:<h3>
    <g:form controller="hotel" action="update" id="$hotel.id" method="POST">
        <br>
        <p>Название: <g:textField name="name"/></p>
        <br>
        <p>Рейтинг: <g:textField name="rating"/></p>
        <br>
        <p>Ссылка: <g:textField name="ref"/></p>
        <br>
        <p>Страна: <g:select name="country" from="${countries}" optionValue="name" optionKey="id"/></p>
        <br>
        <br>
        <button>Применить</button>
    </g:form>
    </body>
</html>
