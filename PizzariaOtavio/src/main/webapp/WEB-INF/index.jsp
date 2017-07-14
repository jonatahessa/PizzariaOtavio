<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./_resources/estiloPaginaInicial.css">
        <link href="https://fonts.googleapis.com/css?family=Hind" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">
        <script type="text/javascript" src="./_resources/domPaginaInicial.js"></script>
        <title>Pizzaria Otávio</title>
    </head>
    <body>
        <section id="principal">
            <div id="menu">
                <ul>
                    <h1>Otávio Pizzaria <span>5615-3763</span></h1>
                    <li><button type="button" id="buttoncontato">Contato</button></li>
                    <li><button type="button" id="buttonlocalizacao">Localização</button></li>
                    <li><button type="button" id="buttoncardapio">Cardápio</button></li>
                    <li><button type="button" id="buttonnossacasa">Nossa Casa</button></li>
                    <li><button type="button" id="buttonhome">Home</button></li>
                </ul>
            </div>

            <div id="firstimg">
                <img src="_imagens/img1.jpg">
            </div>

            <div class="sessoes" id="nossacasa">
                <h1 class="titulos">Nossa Casa</h1>
                <hr/>
                <div id="fachada">
                    <img src="_imagens/FachadaPizzaria.jpg">
                </div>
                <p>Em 1999, Carlos de Toledo Domenico criou a PIZZARIA DOMENICO, unindo a tradição da pizza com a sofisticação informal. E não parou de crescer, evoluir, adotando o lema: “Atender à expectativa dos clientes” como sinônimo de qualidade.</p>
                <p>A localização tornou-se privilegiada: Haddock Lobo X Alameda Tietê, a porta de entrada dos Jardins. O investimento constante nas instalações, produtos e serviços, faz com que a DOMENICO seja considerada um dos clássicos, na terra das pizzarias.</p>
                <p>Todos os recursos são colocados à disposição dos funcionários, para que a filosofia desde a fundação continue: SERVIR PIZZAS COM DEDICAÇÃO, CONHECIMENTO E ALEGRIA.</p>
            </div>

            <div class="sessoes" id="sessaocardapio">
                <h1 class="titulos">Cardápio</h1>
                <hr/>
                <button id="abresalgadas" class="buttonsabrir" type="button" name="abresalgadas">Pizzas Salgadas</button>
                <div class="mostrarsalgadas">
                    <button class="buttonsfecharsalgadas" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="saborpizza">Sabor</th>
                            <th id="descricao">Ingredientes</th>
                            <th id="precopizzacomum">Preço Normal</th>
                            <th id="precopizzabroto">Preço Brotinho</th>
                        </tr>
                        <c:forEach var="comuns" items="${salgadas}">
                            <tr>
                                <td class="celulas">${comuns.nome}</td>
                                <td>${comuns.descricao}</td>
                                <td class="celulas">${comuns.precoComum}</td>
                                <td class="celulas">${comuns.precoBroto}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharsalgadas" type="button" name="fecharcardapio">Fechar</button>
                </div>


                <button id="abredoces" class="buttonsabrir" type="button" name="abredoces">Pizzas Doces</button>

                <div class="mostrardoces">
                    <button class="buttonsfechardoces" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="saborpizza">Sabor</th>
                            <th id="descricao">Ingredientes</th>
                            <th id="precopizzacomum">Preço Normal</th>
                            <th id="precopizzabroto">Preço Brotinho</th>
                            
                        </tr>
                        <c:forEach var="doces" items="${pizzasdoces}">
                            <tr>
                                <td class="celulas">${doces.nome}</td>
                                <td>${doces.descricao}</td>
                                <td class="celulas">${doces.precoComum}</td>
                                <td class="celulas">${doces.precoBroto}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfechardoces" type="button" name="fecharcardapio">Fechar</button>
                </div>


                <button id="abrebebidas" class="buttonsabrir" type="button" name="abredoces">Bebidas</button>

                <div class="mostrarbebidas">
                    <button class="buttonsfecharbebidas" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="saborpizza">Bebida</th>
                            <th id="descricao">Descrição</th>
                            <th id="precopizzacomum">Preço</th>
                        </tr>
                        <c:forEach var="drinks" items="${bebidas}">
                            <tr>
                                <td class="celulas">${drinks.nome}</td>
                                <td>${drinks.descricao}</td>
                                <td class="celulas">${drinks.precoComum}</td>
                                
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharbebidas" type="button" name="fecharcardapio">Fechar</button>
                </div>
            </div>

            <div class="sessoes" id="sessaolocalizacao">
                <h1 class="titulos">Localização</h1>
                <hr/>
                <p>Alameda Afonso Bocchiglieri, 437 - Vila Arriete<br/>
                São Paulo - SP, 04445-130<br/></p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d913.4381189970625!2d-46.68605360945506!3d-23.684808253847507!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xac46f0c22089bbac!2sPizzaria+Otavio!5e0!3m2!1spt-BR!2sbr!4v1500033487605" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>

            <footer id="sessaocontato">
              <div class="sessoes">
                <h1 class="titulos">Contato</h1>
                <hr/>
                <h2>Telefone: 5615-3763</h2>
                <p>Domingo, Segunda e Terça-feira – 18:30h à 00:30h<br/>
                Quarta e Quinta-feira – 18:30h à 1:00h<br/>
                Sexta, Sábado e Vésperas de feriados. – 18:30h às 02:00h<br/>
                Horários para o Delivery:<br/>
                De Segunda à Segunda – 18:30hs à 00:00hs</p>
                <p id="copyright">Copyright (c) Otávio Kalsbier Pizzaria 2017 Copyright Holder All Rights Reserved.</p>
              </div>
            </footer>
        </section>
    </body>
</html>
