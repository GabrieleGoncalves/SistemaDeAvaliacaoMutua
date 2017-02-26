<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPageParticipante.master" AutoEventWireup="true" CodeFile="RelatorioIndividualParticipante.aspx.cs" Inherits="paginas_RelatorioIndividualParticipante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2 class="page-header">Relatório Geral</h2>
    
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Relatório Individual</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" title="Diminuir/Ampliar" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <!-- conteúdo -->
            <div class="row">
                <div class="col-xs-12">
                    <h4 class="box-title">Notas</h4>
                    <hr />
                </div>
                <div class="col-xs-12">
                    <label>
                        <asp:Label ID="lblNomeParticipante" runat="server" Text=""></asp:Label></label>
                    <br />
                    <asp:GridView ID="gdvRelatorioIndividual" runat="server" AutoGenerateColumns="false" CssClass="table table-hover" Visible="false">
                        <Columns>
                            <asp:BoundField HeaderText="Criterio" DataField="cri_descricao" />
                            <asp:BoundField HeaderText="CodigoCri" DataField="cri_codigo" Visible="false" />
                            <asp:BoundField HeaderText="Avaliador" DataField="pes_nome" />
                            <asp:BoundField HeaderText="Nota" DataField="res_nota" />
                        </Columns>
                    </asp:GridView>
                     <asp:GridView ID="gdvRelatorioAnonimo" runat="server" AutoGenerateColumns="false" CssClass="table table-hover" Visible="false">
                        <Columns>
                            <asp:BoundField HeaderText="Criterio" DataField="cri_descricao" />
                            <asp:BoundField HeaderText="CodigoCri" DataField="cri_codigo" Visible="false" />
                            <asp:BoundField HeaderText="Avaliador" DataField="pes_nome" Visible="false" />
                            <asp:BoundField HeaderText="Nota" DataField="res_nota" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">

                    <h4 class="box-title">Análise Geral</h4>
                    <hr />
                    <asp:Label ID="lblScript" runat="server"></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <div class="col-xs-3">
                        <br />
                        <label>Pontos Positivos</label>
                        <asp:ListBox ID="ltbPositivos" runat="server" CssClass="form-control"></asp:ListBox>
                    </div>
                    <div class="col-xs-3">
                        <br />
                        <label>Pontos à melhorar</label>
                        <asp:ListBox ID="ltbMelhorar" runat="server" CssClass="form-control"></asp:ListBox>
                    </div>
                </div>
            </div>

            <br />
            <div class="row">
                <div class="col-xs-12">
                    <h4 class="box-title">Gráfico</h4>
                    <hr />
                </div>
                <div class="col-xs-12">
                    <div id="chart_div"></div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12">
                    <h4 class="box-title">Média</h4>
                    <hr />
                </div>
                <div class="col-xs-12">
                    <label style="color:#5faaaa; font-size:18px;"><asp:Label ID="lblSuaMedia" runat="server" Text="MÉDIA: "></asp:Label></label>
                    <label style="font-size:18px;"><asp:Label ID="lblRecebeMedia" runat="server"></asp:Label></label>
                </div>
            </div>

        </div>
        <!-- /.box-body -->
        <div class="box-footer">
            <div class="row">
                <div class="col-xs-2">
                    <asp:LinkButton ID="lkbImprimir" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="<i class='fa fa-print'></i> Imprimir" />
                </div>
                <div class="col-xs-2">
                </div>
            </div>

        </div>
    </div>
    <!-- /.box -->

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

