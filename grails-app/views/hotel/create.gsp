<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <asset:stylesheet src="custom-style.css"/>
        <title>Внести отель</title>
    </head>

    <body>
        <g:form controller="hotel" action="save" method="POST">
            <br>
            Название: <g:textField name="name"/>
            <br>
            Рейтинг: <g:select name="rating" from="[1,2,3,4,5]"/>
            <br>
            <br>
            Ссылка: <g:textField name="ref"/>
            <br>
            Страна: <g:select name="country" from="${countries}" optionValue="name" optionKey="id"/>
            <br>
            <br>
            <button>Применить</button>
        </g:form>
    </body>
</html>
