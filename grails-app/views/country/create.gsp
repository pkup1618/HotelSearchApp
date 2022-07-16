<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <asset:stylesheet src="custom-style.css"/>
        <title>Внести страну</title>
    </head>
    <body>
    <g:form controller="country" action="save" method="POST">
        <br>
        <p>Название: <g:textField name="name"/></p>
        <br>
        <p>Столица: <g:textField name="capital"/></p>
        <br>
        <button>Применить</button>
    </g:form>
    </body>
</html>
