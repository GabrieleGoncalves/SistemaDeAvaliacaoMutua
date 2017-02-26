<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPageAvaliador.master" AutoEventWireup="true" CodeFile="CriarEquipes.aspx.cs" Inherits="paginas_CriarEquipes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2 class="page-header">Criar Equipes</h2>
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Criar Equipes</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" title="Diminuir/Ampliar" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">


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
                
                <br />
                <div class="col-xs-2">
                    <label style="color: #fff">abaixa o botão</label>
                    <asp:LinkButton ID="lkbAddPes" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="Adicionar" Visible="false" OnClick="lkbAddPes_Click"></asp:LinkButton>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-4">
                    <label>Participantes da Equipe</label>
                    <asp:ListBox ID="ltbParticipantesEquipe" runat="server" CssClass="form-control" AutoPostBack="true" OnSelectedIndexChanged="ltbParticipantesEquipe_SelectedIndexChanged"></asp:ListBox>
                    <br />
                </div>
            </div>
            <div class="box-footer">
                <div class="row">
                    <div class="col-xs-12">
                        <asp:LinkButton ID="lkbCriarAvaliacao" runat="server" CssClass="btn btn-success btn-block btn-flat" Text="<i class='fa fa-book'></i> Criar Equipe" OnClick="lkbCriarAvaliacao_Click"></asp:LinkButton>
                    </div>
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

