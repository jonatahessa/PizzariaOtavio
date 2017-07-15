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
        <link href="https://fonts.googleapis.com/css?family=Kite+One" rel="stylesheet">
        <script type="text/javascript" src="./_resources/domPaginaInicial.js"></script>
        <title>Pizzaria Otávio</title>
    </head>
    <body>
        <section id="principal">
            <div id="menu">
                <ul>
                    <h1>Otávio Kalsbier Pizzaria<br/><span>5615-3763 / 96693-7887</span></h1>
                    <li><button type="button" id="buttoncontato">Contato</button></li>
                    <li><button type="button" id="buttonlocalizacao">Localização</button></li>
                    <li><button type="button" id="buttonpromocoes">Promoções</button></li>
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
                    <img src="_imagens/logo.jpg">
                </div>
                <h2>SATISFAÇÃO GARANTIDA</h2>
                <p>A pizza do Otávio Kalsbier é preparada desde 1991 com a melhor receita, utilizando ingredientes da melhor procedência, feita com muito amor e carinho para entregarmos as você a melhor pizza.</p>
                <p>Por isso podemos garantir a sua total satisfação, caso contrário, trocamos a pizza ou devolvemos o seu dinheiro de volta.</p>
            </div>

            <div class="sessoes" id="sessaocardapio">
                <h1 class="titulos">Cardápio</h1>
                <hr/>
                <h2>* Taxa de entrega a partir de R$ 2,00.</h2>
                <h2>** Borda recheada com catupiry Tirolez R$ 5,00.</h2>
                <h2>*** Pizzas meio a meio serão cobradas pelo maior valor.</h2>
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

                <div id="mostrarbebidas">
                    <h4>TEMOS REFRIGERANTES, CERVEJAS E VINHOS</h4>
                </div>
                <h3>Também temos Calzones no mesmo preço e sabor das Pizzas</h3>
            </div>

            <div class="sessoes" id="sessaopromocoes">
              <h1 class="titulos">Promoções</h1>
              <hr/>
              <div class="casadinhas">
                <h2><u>CASADINHA I</u></h2>
                <p>1 Mussarela<br/>
                1 Calabresa<br/>
                1 Portuguesa<br/>
                1 Dolly 2 litros</p>
                <p>R$ 72,00</p>
              </div>

              <div class="casadinhas">
                <h2><u>CASADINHA II</u></h2>
                <p>1 Mussarela<br/>
                1 Calabresa<br/>
                1 Baiana<br/>
                1 Dolly 2 litros</p>
                <p>R$ 72,00</p>
              </div>

              <div class="casadinhas">
                <h2><u>CASADINHA III</u></h2>
                <p>1 Frango com Catupiry<br/>
                1 Marguerita<br/>
                1 Baiana<br/>
                1 Coca-Cola 2 litros</p>
                <p>R$ 90,00</p>
              </div>

              <div class="casadinhas">
                <h2><u>CASADINHA IV</u></h2>
                <p>1 Brigadeiro<br/>
                1 Catupiry<br/>
                1 Calabresa<br/>
                1 Dolly 2 litros</p>
                <p>R$ 72,00</p>
              </div>
            </div>

            <div class="sessoes" id="sessaolocalizacao">
                <h1 class="titulos">Localização</h1>
                <hr/>
                <p>Alameda Afonso Bocchiglieri, 437 - Vila Arriete<br/>
                São Paulo - SP, 04445-130</p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d913.4381189970625!2d-46.68605360945506!3d-23.684808253847507!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xac46f0c22089bbac!2sPizzaria+Otavio!5e0!3m2!1spt-BR!2sbr!4v1500033487605" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>

            <footer id="sessaocontato">
              <div class="sessoes">
                <h1 class="titulos">Contato</h1>
                <hr/>
                <h2>Telefones: 5615-3763 / 96693-7887</h2>
                <p>De Domingo a Domingo das 18h às 24h.</p>
                <p id="copyright">Copyright (c) Otávio Kalsbier Pizzaria 2017 Copyright Holder All Rights Reserved.</p>
              </div>
            </footer>
        </section>
    </body>
</html>
