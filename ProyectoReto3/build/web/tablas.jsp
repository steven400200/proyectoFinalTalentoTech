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
            <!-- Inicio Tabla inicial -->
            <h2 class="text-center mb-3">Lista de fuentes de energia</h2>
            <div class="col-md-6 overflow-scroll mt-5 mx-auto p-2">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>id</th>
                            <th>name</th>
                            <th>description</th>
                        </tr>
                    </thead>
                    <tbody>
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
                                String sql = "SELECT * FROM energysource"; // Consulta SQL para obtener los usuarios
                                ResultSet rs = stmt.executeQuery(sql);

                                // Mostrar los resultados en la tabla HTML
                                while (rs.next()) {
                                    int id = rs.getInt("id");
                                    String name = rs.getString("name");
                                    String description = rs.getString("description");

                        %>
                        <tr>
                            <td><%= id%></td>
                            <td><%= name%></td>
                            <td><%= description%></td>
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
            <div  class="col-md-8 mx-auto mt-5">
                <hr class="bg-success border-2 border-top border-success" />
            </div>
            <h2 class="text-center mb-3">Lista registros de datos de energia</h2>
            <div class="col-md-6 overflow-scroll mt-5 mx-auto p-2">

                <table  class="table table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Fuente</th>
                            <th scope="col">Producción total</th>
                            <th scope="col">Consumo Total</th>
                            <th scope="col">Diferencia</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            // Configuración de la conexión a la base de datos
                            String url2 = "jdbc:mysql://localhost:3306/energymanagement"; // URL de la base de datos
                            String usuarioDB2 = "root"; // Usuario de MySQL
                            String claveDB2 = ""; // Contraseña de MySQL

                            // Establecer la conexión
                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                Connection conn = DriverManager.getConnection(url2, usuarioDB2, claveDB2);
                                Statement stmt = conn.createStatement();
                                //String sql = "SELECT * FROM energydata"; // Consulta SQL para obtener los usuarios
                                String sql = "SELECT ed.id,es.name as Fuente,ed.year anio, ROUND(SUM(ed.production),1) as produccion, ROUND(SUM(ed.consumption),1) as consumo FROM EnergyData ed JOIN EnergySource es ON ed.source_id = es.id GROUP BY es.name Order by es.name asc;";
                                ResultSet rs = stmt.executeQuery(sql);

                                // Mostrar los resultados en la tabla HTML
                                while (rs.next()) {
                                    String fuente = rs.getString("Fuente");
                                    int year = rs.getInt("anio");
                                    int produccion =(int) Math.round(rs.getDouble("produccion") * 100) / 100; 
                                    int consumo = (int)Math.round(rs.getDouble("consumo") * 100) / 100;


                        %>
                        <tr>
                            <td><%=fuente%></td>
                            <td><%=produccion%></td>
                            <td><%=consumo%></td>
                            <%
                                if (produccion - consumo > 0) {
                            %>   

                            <td class="text-success"><%=produccion - consumo%></td>

                            <%

                            } else {
                            %>
                            <td class="text-danger"><%=produccion - consumo%></td>

                            <%
                                }

                            %>
                        </tr>
                        <%                                }
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
            <div id="inicio" class="col-md-8 mx-auto mt-5">
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
