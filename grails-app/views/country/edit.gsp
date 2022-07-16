<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <asset:stylesheet src="custom-style.css"/>
        <title>Отредактировать страну</title>
    </head>
    <body>

    <h3>Отредактируйте страну:</h3>
    <g:form controller="country" action="update" id="$country.id" method="POST">
        <br>
        <p>Название: <g:textField name="name"/></p>
        <br>
        <p>Столица: <g:textField name="capital"/></p>
        <br>
        <button>Применить</button>
    </g:form>
    </body>
</html>
