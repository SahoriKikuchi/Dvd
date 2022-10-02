<%-- 
    Document   : listagem
    Created on : 28 de set. de 2022, 13:43:08
    Author     : Amanda e Lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cp" value="${pageContext.request.contextPath}"/>
<c:set var="prefixo" value="processaAtores?acao=preparar"/>


<!DOCTYPE html>
<html>
    <head>
        <title>Atores Cadastrados</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet"  type="text/css" href="${cp}/css/style.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    </head>
    <body>
        <h1>Atores Cadastrados</h1>

        <table>
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Sobrenome</th>
                    <th>Data de Estreia</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>

<jsp:useBean
    id="servicos"
    scope="page"
    class="locacaodvds.servicos.AtoresServices"/>

<c:forEach items="${servicos.todos}" var="atores">
                    <tr>

                        <td>${atores.nome}</td>
                        <td>${atores.sobrenome}</td>
                        <td>${atores.dataDeEstreia}</td>

                        <td class = "tdIcon">
                            <a href="${cp}/${prefixo}Alteracao&id=${atores.id}">
                                <i class="material-icons">edit_square</i>
                            </a>
                        </td>
                        <td class = "tdIcon">
                            <a href="${cp}/${prefixo}Exclusao&id=${atores.id}">
                                <i class="material-icons">delete</i>
                            </a>
                        </td>
                    </tr>
</c:forEach>
            </tbody>
        </table>
        <br>
        <div class = "frame">
            <button class = "custom-btn btn-4">
                <a href="${cp}/formularios/atores/novo.jsp" >
                    Novo Ator
                </a>
            </button>
            <button class = "custom-btn btn-4">
                <a href="${cp}/index.jsp">Tela Inicial</a>
            </button>
        </div>
    </body>
</html>