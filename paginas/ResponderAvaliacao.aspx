<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPageAvaliador.master" AutoEventWireup="true" CodeFile="ResponderAvaliacao.aspx.cs" Inherits="paginas_ResponderAvaliacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h2 class="page-header">Responder Avaliação</h2>
        <div class="row">
        <div class="col-lg-12">
            <div class="box">
                <div class="box-header with-border">

            <h3 class="box-title">Responder Avaliação</h3>
                    </div>
                <br />
                   <!-- <asp:Panel ID="pnlConteudo" runat="server">
                        <asp:GridView ID="gdvAvaliar" runat="server"></asp:GridView>
                    </asp:Panel> -->
                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                    <div class="row">
                        <div class="col-xs-4">
                            <br />
                    <asp:LinkButton ID="lkbCriarCritério" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="<i class='fa fa-plus-square'></i> Finalizar" OnClick="lkbCriarCritério_Click"></asp:LinkButton>
                        </div>
                        </div>
                
                
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>

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

</asp:Content>

