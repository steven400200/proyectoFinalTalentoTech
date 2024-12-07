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
            .news-section {
                padding: 20px;
                background-color: #f4f4f4;
                text-align: center;
            }

            .news-section h2 {
                color: #2e7d32; /* Verde */
            }

            .news-section hr {
                border: none;
                height: 2px;
                background-color: #2e7d32;
                width: 50px;
                margin: 10px auto;
            }

            .news-container {
                display: flex;
                justify-content: space-around;
                flex-wrap: wrap;
                margin-top: 20px;
            }

            .news-item {
                background-color: #fff;
                border: 1px solid #ccc;
                border-radius: 8px;
                width: 20%;
                margin: 10px;
                text-align: center;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                transition: transform 0.2s ease;
            }

            .news-item:hover {
                transform: scale(1.05);
            }

            .news-item img {
                width: 100px; /* Tamaño más pequeño */
                height: auto; /* Mantiene proporción */
                object-fit: contain; /* Evita distorsión */
                margin: 20px;
                cursor: pointer;
            }

            .news-item a {
                text-decoration: none;
                display: inline-block;
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
            <!-- Glosario -->
            <!-- Linea separadora -->
            <div id="glosario" class="col-md-8 mx-auto mt-5">
                <hr class="bg-success border-2 border-top border-success" />
            </div>
            <h1 class="h3 text-center mt-5 mb-5 p-1">
                Glosario: Tipos de Energías Renovables
            </h1>
            <!-- Inicio del Glosario -->
            <div class="col-md-8 mx-auto p-1">
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#solar"
                                type="button" role="tab" aria-controls="home" aria-selected="true">Energía Solar</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="eolica-tab" data-bs-toggle="tab" data-bs-target="#eolica" type="button"
                                role="tab" aria-controls="eolica" aria-selected="false">Energía Eólica</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="hidro-tab" data-bs-toggle="tab" data-bs-target="#hidro" type="button"
                                role="tab" aria-controls="hidro" aria-selected="false">Energía Hidráulica</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="marea-tab" data-bs-toggle="tab" data-bs-target="#marea" type="button"
                                role="tab" aria-controls="marea" aria-selected="false">Energía de las Mareas</button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="geo-tab" data-bs-toggle="tab" data-bs-target="#geo" type="button"
                                role="tab" aria-controls="geo" aria-selected="false">Energía Geotérmica</button>
                    </li>
                </ul>
                <div class="tab-content border border-success border-1 m-1" id="myTabContent">
                    <div class="tab-pane fade show active" id="solar" role="tabpanel" aria-labelledby="solar-tab">
                        <div class="row m-3">
                            <div class="col-md-12 mx-auto">
                                <h3 class="h3 text-center text-decoration-underline">Energía Solar</h3>
                            </div>
                        </div>
                        <div class="row m-3">
                            <div class="col-md-12 text-center">
                                <img src="Img/solar.png" style="height:300px;" class="img-fluid img-thumbnail mb-3" alt="...">
                            </div>
                        </div>
                        <div class="row m-3">
                            <div class="col-md-12 mx-auto my-auto">
                                <p class="lead fs-4 text-center-justify mt-3 p-1">
                                    La energía solar se obtiene utilizando la radiación solar. Utiliza diferentes
                                    tecnologías para convertirla en electricidad o calor:
                                    Energía fotovoltaica: utiliza paneles solares para convertir la luz solar directamente
                                    en electricidad.
                                    Energía solar térmica: aprovechar el calor del sol para calentar agua o generar vapor
                                    que se puede utilizar en procesos.
                                    El potencial de la energía solar es enorme porque la cantidad de energía solar que la
                                    Tierra recibe cada día supera la demanda energética mundial.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="eolica" role="tabpanel" aria-labelledby="eolica-tab">
                        <div class="row m-3">
                            <div class="col-md-12 mx-auto">
                                <h3 class="h3 text-center text-decoration-underline">Energía Eólica</h3>
                            </div>
                        </div>
                        <div class="row m-3">
                            <div class="col-md-12 mx-auto text-center">
                                <img src="Img/eolica.jpg" style="height: 300px" class="img-fluid img-thumbnail mb-3" alt="...">
                            </div>
                        </div>
                        <div class="row m-3">
                            <div class="col-md-12 mx-auto my-auto">
                                <p class="lead fs-4 text-center-justify mt-3 p-1">
                                    La energía eólica se genera a partir del movimiento del aire. Las turbinas eólicas
                                    convierten la energía cinética del viento en energía eléctrica, es una de las
                                    tecnologías de energía renovable de más rápido crecimiento debido a su alta eficiencia y
                                    bajo costo.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="hidro" role="tabpanel" aria-labelledby="hidro-tab">
                        <div class="row m-3">
                            <div class="col-md-12 mx-auto">
                                <h3 class="h3 text-center text-decoration-underline">Energía Hidráulica</h3>
                            </div>
                        </div>
                        <div class="row m-3">
                            <div class="col-md-12 mx-auto text-center">
                                <img src="Img/hidro.jpg" style="height: 300px" class="img-fluid img-thumbnail mb-3" alt="...">
                            </div>
                        </div>
                        <div class="row m-3">
                            <div class="col-md-12 mx-auto my-auto">
                                <p class="lead fs-4 text-center-justify mt-3">
                                    La hidroelectricidad, también conocida como energía hidráulica, se produce por el
                                    movimiento del agua, ya sea cayendo desde una altura o fluyendo a través de un río. Es
                                    el recurso renovable más maduro, aunque su desarrollo puede afectar a los ecosistemas
                                    fluviales y terrestres.
                                    Pequeñas centrales hidroeléctricas: menos de 10 MW son ideales para asentamientos
                                    rurales.
                                    Grandes represas hidroeléctricas: producen grandes cantidades de energía, a menudo
                                    utilizando sistemas de estaciones de bombeo para su almacenamiento.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="marea" role="tabpanel" aria-labelledby="marea-tab">
                        <div class="row m-3">
                            <div class="col-md-12 mx-auto">
                                <h3 class="h3 text-center text-decoration-underline">Energía de las Mareas</h3>
                            </div>
                        </div>
                        <div class="row m-3">
                            <div class="col-md-12 mx-auto text-center">
                                <img src="Img/mareas.jpg" style="height: 300px" class="img-fluid img-thumbnail mb-3" alt="...">
                            </div>
                        </div>
                        <div class="row m-3">
                            <div class="col-md-12 mx-auto my-auto">
                                <p class="lead fs-4 text-center-justify mt-3">
                                    La energía de las mareas se basa en la utilización de las mareas oceánicas y el
                                    movimiento de las olas. Este tipo de energía se considera una forma de energía
                                    hidráulica, pero utiliza el movimiento del agua en el océano.
                                    Marea: La electricidad se genera por la diferencia de altura entre la marea alta y
                                    baja.
                                    A pesar de su enorme potencial, el coste de la tecnología y el impacto en los
                                    ecosistemas costeros son cuestiones importantes para su implementación.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="geo" role="tabpanel" aria-labelledby="geo-tab">
                        <div class="row m-3">
                            <div class="col-md-12 mx-auto">
                                <h3 class="h3 text-center text-decoration-underline">Energía Geotérmica</h3>
                            </div>
                        </div>
                        <div class="row m-3">
                            <div class="col-md-12 text-center mx-auto">
                                <img src="Img/geo.png" style="height: 300px" class="img-fluid img-thumbnail mb-3" alt="...">
                            </div>
                        </div>
                        <div class="row m-3">
                            <div class="col-md-12 mx-auto my-auto">
                                <p class="lead fs-4 text-center-justify mt-3">
                                    La energía geotérmica se genera por el calor del interior de la tierra. Este calor
                                    proviene de la desintegración del material radiactivo en el núcleo de la Tierra y se
                                    puede utilizar en:

                                    Plantas de energía geotérmica de alta entalpía: utilizan vapor directo o agua a alta
                                    temperatura para impulsar turbinas.
                                    Bomba de calor geotérmica: utilizada principalmente para calefacción y refrigeración.
                                    Es una fuente de energía continuamente confiable, pero su aplicación depende de la
                                    disponibilidad de fuentes geotérmicas adecuadas.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="inicio" class="col-md-8 mx-auto mt-5">
                <hr class="bg-success border-2 border-top border-success" />
            </div>
            <!-- Sección de Noticias -->
            <div class="news-section">
                <h2>Noticias</h2>
                <hr>
                <div class="news-container">
                    <div class="news-item">
                        <a href="https://www.eltiempo.com/noticias/energia" target="_blank">
                            <img src="Img/eltiempo.png" alt="El Tiempo">
                        </a>
                    </div>
                    <div class="news-item">
                        <a href="https://www.semana.com/noticias/energia/" target="_blank">
                            <img src="Img/semana.png" alt="Semana">
                        </a>
                    </div>
                    <div class="news-item">
                        <a href="https://www.elcolombiano.com/cronologia/noticias/meta/energia" target="_blank">
                            <img src="Img/elcolombiano.png" alt="El Colombiano">
                        </a>
                    </div>
                    <div class="news-item">
                        <a href="https://www.portafolio.co/noticias-economicas/energia" target="_blank">
                            <img src="Img/portafolio.png" alt="Portafolio">
                        </a>
                    </div>
                </div>
            </div>

            <div id="inicio" class="col-md-8 mx-auto mt-5">
                <hr class="bg-success border-2 border-top border-success" />
            </div>
            <!-- Inicio del footer-->
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
