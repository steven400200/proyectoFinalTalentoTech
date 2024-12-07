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
            <!-- CSS  de la gráfica-->

            .graph {
                margin-bottom:1em;
                font:normal 100%/150% arial,helvetica,sans-serif;
            }

            .graph caption {
                font:bold 150%/120% arial,helvetica,sans-serif;
                padding-bottom:0.33em;
            }

            .graph tbody th {
                text-align:right;
            }

            @supports (display:grid) {

                @media (min-width:32em) {

                    .graph {
                        width:600px;
                        height:300px;
                    }

                    .graph caption {
                        display:block;
                    }

                    .graph thead {
                        display:none;
                    }

                    .graph tbody {
                        position:relative;
                        display:grid;
                        grid-template-columns:repeat(auto-fit, minmax(2em, 1fr));
                        column-gap:2.5%;
                        align-items:end;
                        height:100%;
                        margin:3em 0 1em 2.8em;
                        padding:0 1em;
                        border-bottom:2px solid rgba(0,0,0,0.5);
                        background:repeating-linear-gradient(
                            180deg,
                            rgba(170,170,170,0.7) 0,
                            rgba(170,170,170,0.7) 1px,
                            transparent 1px,
                            transparent 20%
                            );
                    }

                    .graph tbody:before,
                        .graph tbody:after {
                        position:absolute;
                        left:-3.2em;
                        width:2.8em;
                        text-align:right;
                        font:bold 80%/120% arial,helvetica,sans-serif;
                    }

                    .graph tbody:before {
                        content:"";
                        top:-0.6em;
                    }

                    .graph tbody:after {
                        content:"0";
                        bottom:-0.6em;
                    }

                    .graph tr {
                        position:relative;
                        display:block;
                    }

                    .graph tr:hover {
                        z-index:999;
                        opacity: 0,5;
                        color: #72BF78;
                        transition:opacity 0.5s;
                    }

                    .graph th,
                    .graph td {
                        display:block;
                        text-align:center;
                    }

                    .graph tbody th {
                        position:absolute;
                        top:-3em;
                        left:0;
                        width:100%;
                        font-weight:normal;
                        text-align:center;
                        white-space:nowrap;
                        text-indent:0;
                        transform:rotate(-60deg);
                    }

                    .graph tbody th:after {
                        content:"";
                    }

                    .graph td {
                        width:100%;
                        height:100%;
                        background:#72BF78;
                        transition:background 0.5s;
                    }

                    .graph tr:hover td {
                        opacity:0.7;
                    }

                    .graph td span {
                        overflow:hidden;
                        position:absolute;
                        left:50%;
                        top:50%;
                        width:0;
                        margin:-1em 0 0;
                        font:normal 85%/120% arial,helvetica,sans-serif;
                        /* 			background:white; */
                        /* 			box-shadow:0 0 0.25em rgba(0,0,0,0.6); */
                        font-weight:bold;
                        opacity:0;
                        transition:opacity 0.5s;
                        transform:rotate(-90deg);
                        color:white;
                    }

                    .toggleGraph:checked + table td span,
                        .graph tr:hover td span {
                        width:4em;
                        margin-left:-2em; /* 1/2 the declared width */
                        opacity:1;
                    }

                } /* min-width:32em */

            } /* grid only */
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
            <!-- Gráfica -->
            <div id="inicio" class="col-md-8 mx-auto mt-5 mb-2">
                <hr class="bg-success border-2 border-top border-success" />
            </div>



            <div class="col-md-8 mx-auto pb-5 mb-5">
                <table class="graph mx-auto">
                    <caption class="text-center">Acumulado de producción por Fuente de energía</caption>
                    <thead>
                        <tr>
                            <th scope="col">Item</th>
                            <th scope="col">Percent</th>
                        </tr>
                    </thead><tbody>
                        <%
                            // Configuración de la conexión a la base de datos
                            String url = "jdbc:mysql://localhost:3306/energymanagement"; // URL de la base de datos
                            String usuarioDB = "root"; // Usuario de MySQL
                            String claveDB = ""; // Contraseña de MySQL

                            // Establecer la conexión
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection conn = DriverManager.getConnection(url, usuarioDB, claveDB);
                                Statement stmt = conn.createStatement();
                                String sql = "SELECT es.name as Fuente, ROUND(SUM(ed.production),1) as produccion, ROUND(SUM(ed.consumption),1) as consumo FROM EnergyData ed JOIN EnergySource es ON ed.source_id = es.id GROUP BY es.name;"; // Consulta SQL para obtener los usuarios
                                ResultSet rs = stmt.executeQuery(sql);

                                // Mostrar los resultados en la tabla HTML
                                while (rs.next()) {
                                    String nombre = rs.getString("Fuente");
                                    double produccion = rs.getDouble("produccion");
                                    double consumo = rs.getDouble("consumo");

                        %>
                        <tr style="height:<%=produccion / 100%>px">
                            <th scope="row"><%=nombre%></th>
                            <td><span><%=produccion%></span></td>
                        </tr>
                        <%
                                }
                                // Cerrar la conexión
                                rs.close();
                                stmt.close();
                                conn.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </tbody>
                </table>
            </div>
            <!-- Linea separadora -->
            <div id="glosario" class="col-md-8 mx-auto pt-5 mt-5 pb-3">
                <hr class="bg-success border-2 border-top border-success" />
            </div>

            <div class="col-md-8 mx-auto mt-5 pt-5 pb-5 mb-5">
                <table class="graph mx-auto">
                    <caption class="text-center">Acumulado de consumo por Fuente de energía</caption>
                    <thead>
                        <tr>
                            <th scope="col">Item</th>
                            <th scope="col">Percent</th>
                        </tr>
                    </thead><tbody>
                        <%
                            // Establecer la conexión
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection conn = DriverManager.getConnection(url, usuarioDB, claveDB);
                                Statement stmt = conn.createStatement();
                                String sql = "SELECT es.name as Fuente, ROUND(SUM(ed.production),1) as produccion, ROUND(SUM(ed.consumption),1) as consumo FROM EnergyData ed JOIN EnergySource es ON ed.source_id = es.id GROUP BY es.name;"; // Consulta SQL para obtener los usuarios
                                ResultSet rs = stmt.executeQuery(sql);

                                // Mostrar los resultados en la tabla HTML
                                while (rs.next()) {
                                    String nombre = rs.getString("Fuente");
                                    double produccion = rs.getDouble("produccion");
                                    double consumo = rs.getDouble("consumo");

                        %>
                        <tr style="height:<%=consumo / 100%>px">
                            <th scope="row"><%=nombre%></th>
                            <td><span><%=consumo%></span></td>
                        </tr>
                        <%
                                }
                                // Cerrar la conexión
                                rs.close();
                                stmt.close();
                                conn.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        %>
                    </tbody>
                </table>
            </div>

            <!-- Glosario -->
            <!-- Linea separadora -->
            <div id="glosario" class="col-md-8 mx-auto pt-5 mt-5 pb-3">
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
