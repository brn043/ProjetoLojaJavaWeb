<% 
    /*
    if(session.getAttribute("name") == null){
        response.sendRedirect("pages/login.html");
    }*/
%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/3f0655ac6d.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="styles/style.css" rel="stylesheet" type="text/css" />
        <title>LESS OFICIAL</title>
    </head>

    <body>
        <header>
            <nav>
                <div class="links-pages">
                    <a href="./produtosController">SHOP</a>
                    <a href="./contatoController">CONTATO</a>
                    <a href="./sobreController">SOBRE</a>
                </div>
                <div class="logo">
                    <a href="#"><img src="assets/less-logo.png" alt=""></a>
                </div>
                <div class="links-user">
                    <a href=""><i class="fa-solid fa-magnifying-glass"></i></a>
                    <a href="./loginController"><i class="fa-solid fa-user"></i></a>
                    <a href="./carrinhoController"><i class="fa-solid fa-cart-shopping"></i></a>
                </div>
            </nav>
        </header>
        <main>
            <div class="main-container" id="main">
                <div class="cta">
                    <img src="assets/cta-image.jpg" alt="" />
                </div>
                <div class="destaques">
                    <h1>DESTAQUES</h1>
                    
                </div>
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
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>

    </html>