<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPageAdministradorMaster.master" AutoEventWireup="true" CodeFile="AdministradorMaster.aspx.cs" Inherits="paginas_AdministradorMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2 class="page-header">Início</h2>
     <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                        <li class="active" data-target="#myCarousel" data-slide-to="1"></li>
                        <li class="" data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="item">
                            <img class="first-slide" src="../imagens/slide1.jpg" alt="First slide"/>
                            <div class="container">
                                <div class="carousel-caption">
                                   <!--  <h1>Nossas avaliações</h1>
                                    <h3>Tem o objetivo de fazer você alcançar resultados com mais facilidade! Você nunca experimentou algo igual.</h3>
                                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p> -->
                                </div>
                            </div>
                        </div>
                        <div class="item active">
                            <img class="second-slide" src="../imagens/slide2.jpg" alt="Second slide"/>
                            <div class="container">
                                <div class="carousel-caption">
                                     <h1>Nossas avaliações</h1>
                                    <h3>Tem o objetivo de fazer você alcançar resultados com mais facilidade! Você nunca experimentou algo igual.</h3>
                                    <!-- <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p> -->
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <img class="third-slide" src="../imagens/slide3.jpg" alt="Third slide"/>
                            <div class="container">
                                <div class="carousel-caption">
                                    <!-- <h1>One more for good measure.</h1>
                                    <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            <br />
            <div class="row">
                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">O que é o SAM?</h3>
                        </div>
                        <div class="box-body">
                            <p style="text-align: justify;">
                                O Sistema de Avaliação Mutua é um método informatizado de gestão de avaliações dentro de uma cultura organizacional, que procura satisfazer as necessidades de retorno do desempenho e relacionamento de um avaliado para com seus avaliadores. De acordo com Elvas et al (2011)  "Avalição de desempenho é a efetivação de um processo contínuo e sistemático de análise e avaliação das atividades técnicas e administrativas desenvolvidas por servidores em exercício na instituição". O sistema proposto é usado nos âmbitos de 90°, onde o Participante é avaliado por seu Avaliador, 180°, onde o Participante avalia e é avaliado por seu Avaliador e, finalmente, 360°, onde o Participante se avalia, avalia outros e também é avaliado por eles. 
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">Administrador Master</h3>
                        </div>
                        <div class="box-body">
                            <p style="text-align: justify;">
                                Para segurança dos usuários o sistema SAM conta com senhas criptografia, prevenção de sql-injection e XSS. O Administrador Master tem acesso total ao sistema, acessando todas as suas finalidades.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
     <!-- jQuery 2.1.3 -->
    <script src="../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    
    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='../plugins/fastclick/fastclick.min.js'></script>
</asp:Content>