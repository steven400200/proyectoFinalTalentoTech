<%@ page import="java.sql.*,java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        <meta name="keywords"
              content="energías renovables, energía solar, energía eólica, energía hidráulica, tecnologías limpias, energía sostenible, energías alternativas, producción de energía, consumo energético, recursos renovables, energías verdes, eficiencia energética, consumo verde, energía en colombia, transición energética colombia" />
        <title>Reto 3</title>
        <style>
            button {
                background-color: #A0D683 !important;
                border-color: #A0D683 !important;
            }

            button:hover {
                background-color: #72BF78 !important;
                border-color: #72BF78 !important;
            }

            nav>div>a>img {
                display: block;
                max-width: 100%;
                height: auto;
            }

            #footer {
                background-color: #72BF78;
            }

            .nav-link,
            #integrantes {
                color: aliceblue !important;
            }

            #integrantes>h4 {
                font-weight: bold;
            }

            .active,
            .nav-link:hover,
            .navbar-brand:hover {
                color: #1A3636 !important;
            }

            thead {
                background-color: #72BF78;
                color: aliceblue;
            }

            tbody>tr:hover {
                background-color: #A0D683;
                color: aliceblue;
                cursor: pointer;
            }
            .footer {
                background-color: #b3b2b2; /* Fondo oscuro */
                color: #fff; /* Texto blanco */
                padding: 40px 20px;
            }

            .footer-container {
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
                max-width: 1200px;
                margin: 0 auto;
            }

            .footer-column {
                display:grid;
                grid-template-columns: 1.5fr 0.5fr 1.5fr;
                margin: 10px;
            }

            .footer-column h3 {
                font-size: 18px;
                margin-bottom: 15px;
                color: #000000; /* Color destacado para títulos */
            }

            .footer-column ul {
                margin-top: 10px;
                list-style: none;
                padding: 0;
            }

            .footer-column ul li {
                margin-bottom: 10px;
            }

            .footer-column ul li a {
                color: #fff;
                text-decoration: none;
                transition: color 0.3s;
            }

            .footer-column ul li a:hover {
                color: #77ab59; /* Color al pasar el ratón */
            }

            /* Redes sociales */
            .social-links {
                margin-top: 30px;
                text-align: left;
            }
            .social-links img {
                width: 20px; /* Tamaño de los íconos */
                margin-right: 10px;
                vertical-align: middle;
            }

            /* Sección inferior del pie de página */
            .footer-bottom {
                text-align: center;
                padding: 20px 0;
                font-size: 14px;
                border-top: 1px solid #b3b2b2; /* Separador */
                margin-top: 20px;
            }

            .footer-bottom p {
                margin: 0;
            }
        </style>
    </head>

    <body>
        <div class="col-md-12 mr-0 pr-0">
            <!-- Aquí va el banner -->
            <div class="col-md-12 mt-5 mx-auto">
                <img src="Img/banner.png" class="w-100" alt="">
            </div>
            <!-- Navegador (Nav) -->
            <nav class="navbar navbar-expand-md navbar-dark fixed-top" style="background-color: #72BF78;">
                <div class="container-fluid">
                    <a href="#">
                        <img src="Img/logo-inicial-pequeño.png" href="#">
                    </a>
                    <a class="navbar-brand" href="#">EvolucionAndo COL</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
                            aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <ul class="navbar-nav me-auto mb-2 mb-md-0">
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="index.html">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="glosario.jsp">Glosarío</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="tablas.jsp">Tabla Energías</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="tips.jsp">Tips de energía</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="graficas.jsp">Gráficas</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <!-- Linea separadora -->
            <!-- Titulo -->
            <div id="inicio" class="col-md-8 mx-auto mt-5">
                <hr class="bg-success border-2 border-top border-success" />
            </div>
            <h1 class="h1 text-center mt-5 mb-5 p-1">
                TIPS DE AHORRO ENERGÉTICO
                
            </h1>
            <div class="col-8 mx-auto mt-5">

                <p class="lead fs-3 text-center-justify mt-3">
                    ¿Sabías que pequeños cambios en tu día a día pueden hacer una gran diferencia en el futuro del planeta?🌍💡 En nuestro apartado de Tips para un Futuro Sostenible, descubrirás cómo aprovechar las energías
                    renovables para reducir tu huella de carbono, ahorrar en tus facturas y contribuir a un mundo más limpio
                    y verde. 🌿
                    <br>
                    Desde soluciones simples y económicas que puedes implementar en casa, hasta tecnologías de vanguardia
                    que están revolucionando la forma en que consumimos energía. ¡Es más fácil de lo que piensas!
                    <br>
                    👉 ¿Estás listo para dar el primer paso hacia un futuro más verde? ¡No te pierdas estos consejos
                    prácticos y efectivos que cambiarán la manera en que consumes energía!
                </p>
            </div>
            <!-- Linea separadora -->
            <div id="glosario" class="col-8 mx-auto mt-5">
                <hr class="bg-success border-2 border-top border-success" />
            </div>
            <!-- Inicio del glosario -->
            <h1 class="h3 text-center mt-5 mb-5">
                Tips de Energía Renovable para Todos
            </h1>
            <div class="col-8 mx-auto">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#solar"
                                type="button" role="tab" aria-controls="home" aria-selected="true">Tip 1</button>
                    </li>
                    <br>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="eolica-tab" data-bs-toggle="tab" data-bs-target="#eolica" type="button"
                                role="tab" aria-controls="eolica" aria-selected="false">Tip 2</button>
                    </li>
                    <br>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="hidro-tab" data-bs-toggle="tab" data-bs-target="#hidro" type="button"
                                role="tab" aria-controls="hidro" aria-selected="false">Tip 3</button>
                    </li>
                    <br>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="marea-tab" data-bs-toggle="tab" data-bs-target="#marea" type="button"
                                role="tab" aria-controls="marea" aria-selected="false">Tip 4</button>
                    </li>
                    <br>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="geo-tab" data-bs-toggle="tab" data-bs-target="#geo" type="button"
                                role="tab" aria-controls="geo" aria-selected="false">Tip 5</button>
                    </li>
                </ul>
                <div class="tab-content border border-success border-1" id="myTabContent">
                    <div class="tab-pane fade show active" id="solar" role="tabpanel" aria-labelledby="solar-tab">
                        <div class="row m-3">
                            <div class="col-4 mx-auto my-auto">
                                <img src="Img/ahorro-energia-casas.jpg" class="img-thumbnail" alt="...">
                            </div>
                            <div class="col mx-auto my-auto">
                                <h1 class="h3">Optimizar el consumo energético en casa</h1>
                                <p class="lead fs-4 text-center-justify mt-3">
                                    •Uso eficiente de la electricidad: Es fundamental apagar los dispositivos electrónicos
                                    cuando no se usen, aprovechar al máximo la luz natural durante el día y cambiar las
                                    bombillas tradicionales por bombillas LED, que consumen hasta un 80% menos energía.
                                    <br>
                                    •Aislamiento térmico: Mejorar el aislamiento de las viviendas mediante la instalación de
                                    ventanas, puertas y techos con materiales eficientes ayuda a reducir las pérdidas de
                                    calor en invierno y el calor excesivo en verano. Esto reduce significativamente el uso
                                    de calefacción y aire acondicionado, lo que implica un ahorro considerable en la factura
                                    energética.

                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="eolica" role="tabpanel" aria-labelledby="eolica-tab">
                        <div class="row m-3">
                            <div class="col-4 mx-auto my-auto">
                                <img src="Img/fromentar.png" class="img-thumbnail" alt="...">
                            </div>
                            <div class="col mx-auto my-auto">
                                <h1 class="h3">Usar energías renovables a nivel doméstico</h1>
                                <p class="lead fs-4 text-center-justify mt-3">
                                    • Paneles solares: Los sistemas de paneles solares permiten aprovechar la energía del
                                    sol
                                    para generar electricidad. Instalar un sistema de paneles solares no solo reduce la
                                    factura eléctrica, sino que también contribuye a la reducción de emisiones de CO2,
                                    promoviendo una fuente de energía limpia y sostenible.
                                    <br>
                                    •Energía eólica doméstica: En zonas con buen viento, la instalación de pequeños
                                    aerogeneradores domésticos puede ser una opción interesante para generar electricidad de
                                    manera renovable.
                                    <br>
                                    •Uso de calentadores solares de agua: Los calentadores solares aprovechan la energía del
                                    sol para calentar el agua en el hogar, lo que ayuda a reducir el consumo de energía
                                    eléctrica o de gas para este fin.


                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="hidro" role="tabpanel" aria-labelledby="hidro-tab">
                        <div class="row m-3">
                            <div class="col-4 mx-auto my-auto">
                                <img src="Img/movilidad.png" class="img-thumbnail" alt="...">
                            </div>
                            <div class="col mx-auto my-auto">
                                <h1 class="h3">Movilidad sostenible</h1>
                                <p class="lead fs-4 text-center-justify mt-3">
                                    •Transporte eléctrico: Los vehículos eléctricos son una excelente opción para reducir
                                    las emisiones de gases contaminantes, disminuir el ruido urbano y contribuir al cuidado
                                    del medio ambiente. Además, su mantenimiento suele ser más económico que el de los
                                    vehículos
                                    convencionales.
                                    <br>
                                    •Bicicletas eléctricas: Las bicicletas eléctricas son una alternativa eficiente y
                                    ecológica al transporte tradicional en áreas urbanas, especialmente en trayectos cortos.
                                    Ayudan a reducir la congestión del tráfico, las emisiones de CO2 y a mejorar la salud

                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="marea" role="tabpanel" aria-labelledby="marea-tab">
                        <div class="row m-3">
                            <div class="col-4 mx-auto my-auto">
                                <img src="Img/reciclaje.jpg" class="img-thumbnail" alt="...">
                            </div>
                            <div class="col mx-auto my-auto">
                                <h1 class="h3">Consejos sobre reciclaje y reducción de residuos</h1>
                                <p class="lead fs-4 text-center-justify mt-3">
                                    • Reciclaje en el hogar: Separar correctamente los residuos reciclables (plástico,
                                    papel, vidrio, etc.) es clave para reducir el impacto ambiental. Implementar un sistema
                                    de reciclaje eficiente contribuye a la reducción de residuos y la conservación de
                                    recursos.
                                    <br>
                                    •Reducir el consumo de plásticos: Promover el uso de productos reutilizables, como
                                    botellas de acero inoxidable y bolsas de tela, ayuda a reducir la cantidad de plásticos
                                    desechables que terminan en vertederos o en los océanos.

                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="geo" role="tabpanel" aria-labelledby="geo-tab">
                        <div class="row m-3">
                            <div class="col-4 mx-auto my-auto">
                                <img src="Img/ahorroAgua.jpg" class="img-thumbnail" alt="...">
                            </div>
                            <div class="col mx-auto my-auto">
                                <h1 class="h3">Ahorra agua de manera eficiente</h1>
                                <p class="lead fs-4 text-center-justify mt-3">
                                    • Sistemas de recolección de agua de lluvia: Instalar sistemas que recojan y almacenen
                                    agua de lluvia no solo ayuda a conservar agua potable, sino que también permite usarla
                                    para regar jardines, lavar el coche y otros usos domésticos, reduciendo así el consumo
                                    de agua tratada.
                                    <br>
                                    • Uso eficiente del agua: Adoptar tecnologías de bajo consumo como inodoros de bajo
                                    flujo
                                    y grifos con sensores ayuda a reducir el gasto de agua sin sacrificar la comodidad

                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="members" role="tabpanel" aria-labelledby="members-tab">
                        <div class="row m-3">
                            <div class="col-3 mx-auto my-auto">
                                <img src="Img/logo-inicial-medio.png" class="img-thumbnail" alt="...">
                            </div>
                            <div class="col mx-auto my-auto">
                                <h1 class="h4">Lista de los integrantes del proyecto:</h1>
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">Giovanny Steven Contreras Lozano</li>
                                    <li class="list-group-item">Maria Camila Montilla Orozco</li>
                                    <li class="list-group-item">Jessica López</li>
                                    <li class="list-group-item">Juan Esteban Quintero Bolaños</li>
                                    <li class="list-group-item">Jhon Alexander Lopez Mateus</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <!-- Linea separadora -->
            <div id="tips" class="col-md-8 mx-auto mt-5">
                <hr class="bg-success border-2 border-top border-success" />
            </div>
            
            <!-- Inicio del footer-->
            <div id="footer" class="d-flex pt-5 pb-5">

                <div class="footer-column">
                    <div id="integrantes" class="mx-auto p-2">
                        <h4 class="h3">Integrantes del Proyecto:</h4>
                        <ul class="nav flex-column">
                            <li class="nav-item mb-2">Giovanny Steven Contreras Lozano</li>
                            <li class="nav-item mb-2">Maria Camila Montilla Orozco</li>
                            <li class="nav-item mb-2">Jessica López</li>
                            <li class="nav-item mb-2">Juan Esteban Quintero Bolaños</li>
                            <li class="nav-item">Jhon Alexander Lopez Mateus</li>
                        </ul>
                    </div>

                    <ul class="social-links">
                        <li><a href="#"><img src="Img/facebook.png" alt="Facebook"> Facebook</a></li>
                        <li><a href="#"><img src="Img/x.png" alt="Twitter"> Twitter</a></li>
                        <li><a href="#"><img src="Img/instagram.png" alt="Instagram"> Instagram</a></li>
                        <li><a href="#"><img src="Img/youtube.png" alt="YouTube"> YouTube</a></li>
                    </ul>
                    <div>
                        <ul>
                            <li><a href="#">NIT: 888923456-3</a></li>
                            <li><a href="#">CALLE 76 # 90 - 665, ARMENIA - QUÍNDIO, COLOMBIA</a></li>
                            <li><a href="#">CONMUTADOR: (57) (606) 6006688</a></li>
                            <li><a href="#">WHATSAPP: (57) 300 111555</a></li>
                            <li><a href="#">PROGRAMA DE TRANSPARENCIA Y ÉTICA EMPRESARIAL: etica@evolucionandocol.com.co</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2024 EvolucionAndo COL S.A.S. Todos los derechos reservados.</p>
            </div>
        </div>
    </body>
</html>

