<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPageAvaliador.master" AutoEventWireup="true" CodeFile="CriarCriterios.aspx.cs" Inherits="paginas_CriarCriterios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2 class="page-header">Criar Critérios</h2>
    <div class="row">
        <!-- Criar Critérios  -->
        <div class="col-md-12">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Selecionar Critérios</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" title="Diminuir/Ampliar" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <div class="box-body">

                    <div class="row">
                        <div class="col-xs-6">
                            <label>Nome do critério</label>
                            <asp:TextBox ID="txtNomeCriterio" runat="server" CssClass="form-control" placeholder="Digite um nome para o critério"></asp:TextBox>
                        </div>
                        <div class="col-xs-2">
                            <label style="color: #fff">abaixa o botão</label>
                            <asp:LinkButton ID="lkbCriarCriterio" runat="server" CssClass="btn btn-primary" Text="<i class='fa fa-plus-square'></i> Criar" OnClick="lkbCriarCriterio_Click"></asp:LinkButton>
                        </div>
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-xs-3">
                            <label>Criterios Criados</label>
                            <asp:ListBox ID="ltbCritériosCriados" runat="server" CssClass="form-control" SelectionMode="Multiple"></asp:ListBox>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <asp:Label ID="lblScript" runat="server" Text=""></asp:Label>
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

