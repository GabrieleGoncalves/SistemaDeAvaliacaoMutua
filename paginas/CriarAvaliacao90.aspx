<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPageAvaliador.master" AutoEventWireup="true" CodeFile="CriarAvaliacao90.aspx.cs" Inherits="paginas_CriarAvaliacao90" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- date-range-picker -->
    <link href="../plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2 class="page-header">Criar Avaliação 90°</h2>
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Avaliação 90°</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" title="Diminuir/Ampliar" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <div class="row">
                <div class="col-xs-6">
                    <!-- conteúdo -->
                    <div class="form-group">
                        <label>Nome da Avaliação:</label>
                        <asp:TextBox ID="txtNomeAvaliacao" runat="server" CssClass="form-control" placeholder="Nome da Avaliação"></asp:TextBox>
                        

                    </div>


                    <!-- /.form group -->
                </div>
            </div>

            <div class="row">
                <div class="col-xs-6">
                    <!-- conteúdo -->
                    <div class="form-group">
                        <label>Descrição da Avaliação:</label>
                        <asp:TextBox ID="txtDescricaoAvaliacao" runat="server" CssClass="form-control" placeholder="Descrição da Avaliação"></asp:TextBox>
                        

                    </div>


                    <!-- /.form group -->
                </div>
            </div>

            <div class="row">
                <div class="col-xs-3">
                    <label>Início</label>
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <asp:TextBox ID="txtInicio" runat="server"  CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>
                    <!-- /.input group -->
                </div>
                <div class="col-xs-3">
                    <label>Término</label>
                    <div class="input-group">
                        <div class="input-group-addon">
                            <i class="fa fa-calendar"></i>
                        </div>
                        <asp:TextBox ID="txtTermino" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>
                    <!-- /.input group -->
                </div>
            </div>
        </div>
        <!-- /.box-body -->
    </div>
    <!-- /.box -->


    <div class="row">
        <!-- Selecionar Critérios  -->
        <div class="col-md-6">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Selecionar Critérios</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" title="Diminuir/Ampliar" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-xs-4">
                            <!-- conteúdo -->
                            <label>Selecionar</label>
                            <asp:ListBox ID="ltbSelecionar" runat="server" CssClass="form-control" OnSelectedIndexChanged="ltbSelecionar_SelectedIndexChanged" AutoPostBack="True" SelectionMode="Multiple">
                            </asp:ListBox>
                        </div>
                        <div class="col-xs-4">
                            <!-- conteúdo -->
                            <label>Selecionados</label>
                            <asp:ListBox ID="ltbSelecionados" runat="server" CssClass="form-control" OnSelectedIndexChanged="ltbSelecionados_SelectedIndexChanged" AutoPostBack="True" SelectionMode="Multiple"></asp:ListBox>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-6">
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <div class="row">
                        <div class="col-xs-4">
                            <!-- conteúdo -->
                            <!-- Button trigger modal -->
                            <asp:LinkButton ID="lkbCriarCritério" runat="server" CssClass="btn btn-primary btn-block btn-flat" data-toggle="modal" data-target="#myModal" Text="<i class='fa fa-plus-square'></i> Criar Critério"></asp:LinkButton>
                            <!-- Modal -->
                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-md">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                            <h4 class="modal-title" id="myModalLabel">Criar Critério</h4>
                                        </div>
                                        <div class="modal-body">

                                            <div class="form-group">
                                                <label>Digite um Critério</label>
                                                <asp:TextBox ID="txtNovoCriterio" runat="server" CssClass="form-control" placeholder="Digite um Critério"></asp:TextBox>
                                                <br />
                                                <!-- /.form group -->
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <asp:Button ID="btnFecharModalCriterio" runat="server" CssClass=" btn btn-default" data-dismiss="modal" Text="Fechar" OnClick="btnFecharModalCriterio_Click" />
                                            <asp:LinkButton ID="lkbSalvarCriterio" runat="server" CssClass=" btn btn-primary" Text="<i class='fa fa-check-circle'></i> Criar" OnClick="lkbSalvarCriterio_Click" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xs-4">
                            <asp:LinkButton ID="lkbPesarCriterios" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="<i class='fa fa-square'></i> Pesar Critérios" OnClick="lkbPesarCriterios_Click"></asp:LinkButton>
                            <!-- Modal -->
                            <div class="modal fade" id="modalPesarCriterios" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-sm">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                            <h4 class="modal-title" id="H2">Pesar Critérios</h4>
                                        </div>
                                        <div class="modal-body">

                                            <div id="divmodal" runat="server" class="form-group">
                                                <div class="row">
                                                    <div class="col-xs-10">
                                                        <asp:Label ID="lblCodCriterio1" runat="server" Visible="false"></asp:Label>
                                                        <asp:Label ID="lblCriterio1" runat="server" Visible="false" Font-Bold="True"></asp:Label>
                                                        <asp:TextBox ID="txtPeso1" runat="server" CssClass="form-control" Visible="false" placeholder="Digite um peso" Text="1"></asp:TextBox>
                                                        <br />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-10">
                                                        <asp:Label ID="lblCodCriterio2" runat="server" Visible="false"></asp:Label>
                                                        <asp:Label ID="lblCriterio2" runat="server" Visible="false" Font-Bold="True"></asp:Label>
                                                        <asp:TextBox ID="txtPeso2" runat="server" CssClass="form-control" Visible="false" placeholder="Digite um peso" Text="1"></asp:TextBox>
                                                        <br />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-10">
                                                        <asp:Label ID="lblCodCriterio3" runat="server" Visible="false"></asp:Label>
                                                        <asp:Label ID="lblCriterio3" runat="server" Visible="false" Font-Bold="True"></asp:Label>
                                                        <asp:TextBox ID="txtPeso3" runat="server" CssClass="form-control" Visible="false" placeholder="Digite um peso" Text="1"></asp:TextBox>
                                                        <br />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-10">
                                                        <asp:Label ID="lblCodCriterio4" runat="server" Visible="false"></asp:Label>
                                                        <asp:Label ID="lblCriterio4" runat="server" Visible="false" Font-Bold="True"></asp:Label>
                                                        <asp:TextBox ID="txtPeso4" runat="server" CssClass="form-control" Visible="false" placeholder="Digite um peso" Text="1"></asp:TextBox>
                                                        <br />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-10">
                                                        <asp:Label ID="lblCodCriterio5" runat="server" Visible="false"></asp:Label>
                                                        <asp:Label ID="lblCriterio5" runat="server" Visible="false" Font-Bold="True"></asp:Label>
                                                        <asp:TextBox ID="txtPeso5" runat="server" CssClass="form-control" Visible="false" placeholder="Digite um peso" Text="1"></asp:TextBox>
                                                        <br />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-10">
                                                        <asp:Label ID="lblCodCriterio6" runat="server" Visible="false"></asp:Label>
                                                        <asp:Label ID="lblCriterio6" runat="server" Visible="false" Font-Bold="True"></asp:Label>
                                                        <asp:TextBox ID="txtPeso6" runat="server" CssClass="form-control" Visible="false" placeholder="Digite um peso" Text="1"></asp:TextBox>
                                                        <br />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-10">
                                                        <asp:Label ID="lblCodCriterio7" runat="server" Visible="false"></asp:Label>
                                                        <asp:Label ID="lblCriterio7" runat="server" Visible="false" Font-Bold="True"></asp:Label>
                                                        <asp:TextBox ID="txtPeso7" runat="server" CssClass="form-control" Visible="false" placeholder="Digite um peso" Text="1"></asp:TextBox>
                                                        <br />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-10">
                                                        <asp:Label ID="lblCodCriterio8" runat="server" Visible="false"></asp:Label>
                                                        <asp:Label ID="lblCriterio8" runat="server" Visible="false" Font-Bold="True"></asp:Label>
                                                        <asp:TextBox ID="txtPeso8" runat="server" CssClass="form-control" Visible="false" placeholder="Digite um peso" Text="1"></asp:TextBox>
                                                        <br />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-10">
                                                        <asp:Label ID="lblCodCriterio9" runat="server" Visible="false"></asp:Label>
                                                        <asp:Label ID="lblCriterio9" runat="server" Visible="false" Font-Bold="True"></asp:Label>
                                                        <asp:TextBox ID="txtPeso9" runat="server" CssClass="form-control" Visible="false" placeholder="Digite um peso" Text="1"></asp:TextBox>
                                                        <br />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-10">
                                                        <asp:Label ID="lblCodCriterio10" runat="server" Visible="false"></asp:Label>
                                                        <asp:Label ID="lblCriterio10" runat="server" Visible="false" Font-Bold="True"></asp:Label>
                                                        <asp:TextBox ID="txtPeso10" runat="server" CssClass="form-control" Visible="false" placeholder="Digite um peso" Text="1"></asp:TextBox>
                                                        <br />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="modal-footer">
                                            <asp:Button ID="btnFecharPesarCriterios" runat="server" CssClass=" btn btn-default" data-dismiss="modal" Text="Fechar" />
                                            <asp:LinkButton ID="btnSalvarPesos" runat="server" CssClass=" btn btn-primary" Text="<i class='fa fa-save'></i> Salvar" onclick="btnSalvarPesos_Click"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- /. box-footer -->
            </div>
            <!-- /.box -->
        </div>

        <!-- Selecionar Equipes -->
        <div class="col-md-6">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Selecionar Equipes</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" title="Diminuir/Ampliar" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <div class="row">
                        <div class="col-xs-4">
                            <!-- conteúdo -->
                            <label>Selecionar</label>
                            <asp:ListBox ID="ltbSelecionarEquipe" runat="server" CssClass="form-control" OnSelectedIndexChanged="ltbSelecionarEquipe_SelectedIndexChanged" AutoPostBack="True" SelectionMode="Multiple"></asp:ListBox>
                        </div>
                        <div class="col-xs-4">
                            <!-- conteúdo -->
                            <label>Selecionados</label>
                            <asp:ListBox ID="ltbSelecionadosEquipe" runat="server" CssClass="form-control" OnSelectedIndexChanged="ltbSelecionadosEquipe_SelectedIndexChanged" AutoPostBack="True" SelectionMode="Multiple"></asp:ListBox>
                        </div>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <div class="row">
                        <div class="col-xs-4">
                            <!-- conteúdo -->
                            <!-- Button trigger modal -->
                            <asp:LinkButton ID="lkbCriarEquipe" runat="server" CssClass="btn btn-primary btn-block btn-flat" data-toggle="modal" data-target="#modalEquipe" Text="<i class='fa fa-plus-square'></i> Criar Equipe"></asp:LinkButton>
                            <!-- Modal -->
                            <div class="modal fade" id="modalEquipe" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                            <h4 class="modal-title" id="H1">Criar Equipe</h4>
                                        </div>
                                        <div class="modal-body">

                                            <div class="row">
                                                <div class="col-xs-5">
                                                    <label>Digite um nome para a equipe</label>
                                                    <asp:TextBox ID="txtNomeEquipe" runat="server" CssClass="form-control" placeholder="Digite um nome para a equipe"></asp:TextBox>
                                                    <br />
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-2">
                                                    <label>Pesquisar por</label>
                                                    <asp:DropDownList ID="ddlPesquisarPor" runat="server" CssClass="form-control">
                                                        <asp:ListItem>Selecione</asp:ListItem>
                                                        <asp:ListItem>Matricula</asp:ListItem>
                                                        <asp:ListItem>Email</asp:ListItem>
                                                        <asp:ListItem>Nome</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <br />
                                                </div>

                                                <div class="col-xs-4">
                                                    <label>Pesquisar</label>
                                                    <asp:TextBox ID="txtPesquisar" runat="server" CssClass="form-control" placeholder="Pesquisar"></asp:TextBox>
                                                </div>

                                                <div class="col-xs-2">
                                                    <label style="color: #fff">abaixa o botão</label>
                                                    <asp:LinkButton ID="lkbPesquisar" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="<i class='fa fa-search'></i> Pesquisar" OnClick="lkbPesquisar_Click"></asp:LinkButton>
                                                </div>

                                                <%--<script> $(document).ready(function () { $('#modalEquipe').modal('show'); }) </script>--%>
                                            </div>

                                            <div class="row">
                                                <asp:GridView ID="gdvPesquisarEquipe" runat="server" AutoGenerateColumns="False">
                                                    <Columns>
                                                        <asp:BoundField DataField="usu_codigo" HeaderText="#" />
                                                        <asp:BoundField DataField="pes_ra" HeaderText="Matricula:" />
                                                        <asp:BoundField DataField="pes_nome" HeaderText="Nome:" />
                                                        <asp:BoundField DataField="pes_email" HeaderText="Email" />
                                                        <asp:TemplateField HeaderText="Selecione">
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="CheckBox1" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </asp:GridView>
                                                <asp:Label ID="lblResultadosPesquisa" runat="server"></asp:Label>
                                                <br />
                                                <div class="col-xs-2">
                                                    <label style="color: #fff">abaixa o botão</label>
                                                    <asp:LinkButton ID="lkbAddPes" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="Adicionar" Visible="false" OnClick="lkbAddPes_Click"></asp:LinkButton>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-xs-4">
                                                    <br />
                                                    <label>Participantes da Equipe</label>
                                                    <asp:ListBox ID="ltbParticipantesEquipe" runat="server" CssClass="form-control" OnSelectedIndexChanged="ltbParticipantesEquipe_SelectedIndexChanged" AutoPostBack="true"></asp:ListBox>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="modal-footer">
                                            <asp:Button ID="btnFecharModalEquipe" runat="server" CssClass=" btn btn-default" data-dismiss="modal" Text="Fechar" />
                                            <asp:LinkButton ID="lkbSalvarEquipe" runat="server" CssClass=" btn btn-primary" Text="<i class='fa fa-check-circle'></i> Criar" OnClick="lkbSalvarEquipe_Click"/>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /. box-footer -->
            </div>
            <!-- /.box -->
        </div>
    </div>

    <div class="box">
        <div class="box-header with-border">
            <div class="row">
                <div class="col-xs-12">
                    <asp:LinkButton ID="lkbCriarAvaliacao" runat="server" CssClass="btn btn-success btn-block btn-flat" Text="<i class='fa fa-book'></i> Criar Avaliação" OnClick="lkbCriarAvaliacao_Click"></asp:LinkButton>
                </div>
            </div>
        </div>
    </div>

    <!-- Scripts -->
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

    <asp:Label ID="lblScript" runat="server"></asp:Label>
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

