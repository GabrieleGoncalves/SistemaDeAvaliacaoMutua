<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPageAvaliador.master" AutoEventWireup="true" CodeFile="CriarAvaliacao.aspx.cs" Inherits="paginas_CriarAvaliacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- date-range-picker -->
    <link href="../plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2 class="page-header">Criar Avaliação</h2>
    <div class="row">
        <div class="col-lg-12">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Definição dos tipos de Avaliação</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" title="Diminuir/Ampliar" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="box-group" id="accordion">
                        <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
                        <div class="panel box box-primary">
                            <div class="box-header with-border">
                                <h4 class="box-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">Avaliação 90°
                          </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse">
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-lg-3 col-xs-6">
                                            <!-- small box -->
                                            <div class="small-box bg-aqua">
                                                <div class="inner">
                                                    <h3 style="color: #fff;">90°</h3>
                                                    <p>Avaliação</p>
                                                </div>
                                                <div class="icon">

                                                    <i class="fa fa-user"></i>
                                                </div>
                                                <!--  <a href="#" class="small-box-footer">Mais informações <i class="fa fa-arrow-circle-right"></i>
                                </a> -->
                                            </div>
                                        </div>
                                        <!-- ./col -->
                                        <!-- texto da definição -->
                                        A avaliação 90° é praticada pelo Avaliador na hierarquia funcional. Neste método, grande responsabilidade é atribuída ao Avaliador, que assume o compromisso de emitir parecer sobre todos os seus participantes avaliados.
                                    </div>
                                    <div class="box-footer">
                                        <div class="row">
                                            <div class="col-xs-2">

                                                <asp:LinkButton ID="lkbNovaAvaliacao90" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="<i class='fa fa-plus-circle'></i> Nova Avaliação" OnClick="lkbNovaAvaliacao90_Click" />

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel box box-danger">
                            <div class="box-header with-border">
                                <h4 class="box-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">Avaliação 180°
                          </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse">
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-lg-3 col-xs-6">
                                            <!-- small box -->
                                            <div class="small-box bg-red">
                                                <div class="inner">
                                                    <h3 style="color: #fff;">180°</h3>
                                                    <p>Avaliação</p>
                                                </div>
                                                <div class="icon">
                                                    <i class="fa fa-users"></i>
                                                </div>
                                                <!-- <a href="#" class="small-box-footer">Mais informações <i class="fa fa-arrow-circle-right"></i>
                                </a> -->
                                            </div>
                                        </div>
                                        <!-- ./col -->
                                        <!-- texto da definição -->
                                        Este modelo de avaliação é realizado em conjunto entre Avaliador e Participante, isto é, a ferramenta de avaliação é analisada ao mesmo tempo e discutida pelos dois. É uma rica possibilidade de troca, com transparência, clareza e objetividade.
                                    </div>
                                </div>
                                <div class="box-footer">
                                    <div class="row">
                                        <div class="col-xs-2">
                                            <asp:LinkButton ID="lkbNovaAvaliacao180" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="<i class='fa fa-plus-circle'></i> Nova Avaliação" OnClick="lkbNovaAvaliacao180_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel box box-success">
                            <div class="box-header with-border">
                                <h4 class="box-title">
                                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">Avaliação 360°
                          </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse">
                                <div class="box-body">
                                    <div class="row">
                                        <div class="col-lg-3 col-xs-6">
                                            <!-- small box -->
                                            <div class="small-box bg-green">
                                                <div class="inner">
                                                    <h3 style="color: #fff;">360°</h3>
                                                    <p>Avaliação</p>
                                                </div>
                                                <div class="icon">
                                                    <i class="fa fa-users"></i>
                                                </div>
                                                <!-- <a href="#" class="small-box-footer">Mais informações <i class="fa fa-arrow-circle-right"></i>
                                </a> -->
                                            </div>
                                        </div>
                                        <!-- ./col -->
                                        <!-- texto da definição -->
                                        O Avaliador recebe feedbacks simultâneos de diversas fontes ao seu redor (daí o nome 360º). Ele pode ser avaliado por seus pares de trabalho, superiores e alunos. Neste tipo de avaliação é considerada também a avaliação que o próprio participante faz de si mesmo.
                                    </div>

                                </div>
                                <div class="box-footer">
                                    <div class="row">
                                        <div class="col-xs-2">
                                            <asp:LinkButton ID="lkbNovaAvaliacao360" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="<i class='fa fa-plus-circle'></i> Nova Avaliação" OnClick="lkbNovaAvaliacao360_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->

    <div class="box">
        <div class="box-header with-border">

            <h3 class="box-title">Modelo de Avaliações</h3>
                  
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" title="Diminuir/Ampliar" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <br />
                   <div class="row">
                <div class="col-xs-3">
                  
                    <asp:DropDownList ID="ddlTipoPesquisa" runat="server" CssClass="form-control">
                        <asp:ListItem>Selecione...</asp:ListItem>
                        <asp:ListItem>Nome</asp:ListItem>
                        <asp:ListItem>Descrição</asp:ListItem>
                    
                    </asp:DropDownList>
                </div>

                <div class="col-xs-3">
                    <asp:TextBox ID="txtPesquisa" runat="server" CssClass="form-control"></asp:TextBox>
                </div>

                 <div class="col-xs-2">
                    <asp:LinkButton ID="lkbPesquisar" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="<i class='fa fa-search'></i> Pesquisar" OnClick="lkbPesquisar_Click" ></asp:LinkButton>
                </div>
            </div>
            <br />

            <div class="table-responsive no-padding">
                <asp:GridView ID="gdvGerenciarAvaliacoes" runat="server" CssClass="table table-hover" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField HeaderText="#" DataField="ava_codigo" Visible="false" />
                        <asp:BoundField HeaderText="Avaliação" DataField="ava_nome" />
                        <asp:BoundField HeaderText="Descrição" DataField="ava_descricao" />
                        <asp:BoundField HeaderText="Tipo" DataField="ava_tipo" />
                        <asp:BoundField HeaderText="Descrição" DataField="ava_descricao" Visible="false" />
                        

                        <asp:HyperLinkField DataNavigateUrlFields="ava_codigo" DataNavigateUrlFormatString="~/paginas/AvaliacaoModelo.aspx?avaliacao={0}" Text="Usar Modelo" HeaderText="Selecionar" />
                    </Columns>
                </asp:GridView>
                &nbsp;</div>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /.box -->


    <!-- date-range-picker -->
    <script src="../plugins/daterangepicker/daterangepicker.js"></script>


    <script src="../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- InputMask -->
    <script src="../plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
    <script src="../plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
    <script src="../plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
    <!-- date-range-picker -->
    <script src="../plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
    <!-- bootstrap color picker -->
    <script src="../plugins/colorpicker/bootstrap-colorpicker.min.js" type="text/javascript"></script>
    <!-- bootstrap time picker -->
    <script src="../plugins/timepicker/bootstrap-timepicker.min.js" type="text/javascript"></script>
    <!-- SlimScroll 1.3.0 -->
    <script src="../plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- iCheck 1.0.1 -->
    <script src="../plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='../plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js" type="text/javascript"></script>
    <!-- AdminLTE for demo purposes 
    <script src="../dist/js/demo.js" type="text/javascript"></script> -->
    <!-- Page script -->


    <script type="text/javascript">
        $(function () {
            //Datemask dd/mm/yyyy
            $("#datemask").inputmask("dd/mm/yyyy", { "placeholder": "dd/mm/yyyy" });
            //Datemask2 mm/dd/yyyy
            $("#datemask2").inputmask("mm/dd/yyyy", { "placeholder": "mm/dd/yyyy" });
            //Money Euro
            $("[data-mask]").inputmask();

            //Date range picker
            $('#reservation').daterangepicker();
            //Date range picker with time picker
            $('#reservationtime').daterangepicker({ timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A' });
            //Date range as a button
            $('#daterange-btn').daterangepicker(
                    {
                        ranges: {
                            'Today': [moment(), moment()],
                            'Yesterday': [moment().subtract('days', 1), moment().subtract('days', 1)],
                            'Last 7 Days': [moment().subtract('days', 6), moment()],
                            'Last 30 Days': [moment().subtract('days', 29), moment()],
                            'This Month': [moment().startOf('month'), moment().endOf('month')],
                            'Last Month': [moment().subtract('month', 1).startOf('month'), moment().subtract('month', 1).endOf('month')]
                        },
                        startDate: moment().subtract('days', 29),
                        endDate: moment()
                    },
            function (start, end) {
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            }
            );

            //iCheck for checkbox and radio inputs
            $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
                checkboxClass: 'icheckbox_minimal-blue',
                radioClass: 'iradio_minimal-blue'
            });
            //Red color scheme for iCheck
            $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
                checkboxClass: 'icheckbox_minimal-red',
                radioClass: 'iradio_minimal-red'
            });
            //Flat red color scheme for iCheck
            $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
                checkboxClass: 'icheckbox_flat-green',
                radioClass: 'iradio_flat-green'
            });

            //Colorpicker
            $(".my-colorpicker1").colorpicker();
            //color picker with addon
            $(".my-colorpicker2").colorpicker();

            //Timepicker
            $(".timepicker").timepicker({
                showInputs: false
            });
        });
    </script>

</asp:Content>

