<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="styles/style.css">
        <link rel="stylesheet" href="styles/carrinhoStyle.css">
        <title>Carrinho - LESS</title>
    </head>
    <body>
        <header>
            <nav>
                <div class="links-pages">
                    <a href="./produtosController">SHOP</a>
                    <a href="./sobreController">SOBRE</a>
                </div>
                <div class="logo">
                    <a href="./indexController"><img src="assets/less-logo.png" alt=""></a>
                </div>
                <div class="links-user">
                    <a href=""><i class="fa-solid fa-magnifying-glass"></i></a>
                    <a href="./loginController"><i class="fa-solid fa-user"></i></a>
                    <a href="#"><i class="fa-solid fa-cart-shopping"></i></a>
                </div>
            </nav>
        </header>
        <main>
            <div class="title">
                <h1>Carrinho</h1>
            </div>
            <div class="cart-container">
                <table>
                    <%-- Use JSP para iterar sobre a lista de livros e exibi-los na tabela --%>
                    <c:forEach items="${carrinho}" var="carrinho">
                            <span>${carrinho.image}</span>
                            <span>${carrinho.produto}</span>
                            <span>${carrinho.preco}</span>
                            <span>${carrinho.quantidade}</span>
                            <span>${carrinho.total}</span>
                            <!-- Adicione mais colunas conforme necessário -->
                    </c:forEach>
                </table>
            </div>
        </main>
        <footer>
            <div class="footer-container">
                <div class="infos">
                    <p>
                        LESS S.A © 2024.
                        <br>
                        todos os direitos reservados
                        <br>
                        Londrina, PR.
                    </p>
                </div>
                <div class="contact">
                </div>
                <div class="credits">
                    <p>
                        Desenvolvido por:
                        <br>
                        Bruno de Souza Araujo
                        <br>
                        <a href=""><i class="fa-brands fa-instagram"></i> @brn.043</a>
                    </p>
                </div>
            </div>
        </footer>
    </body>
</html>
