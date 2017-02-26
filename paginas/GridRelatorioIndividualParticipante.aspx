<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPageParticipante.master" AutoEventWireup="true" CodeFile="GridRelatorioIndividualParticipante.aspx.cs" Inherits="paginas_GridRelatorioIndividualParticipante" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <h3 class="page-header">Relatórios</h3>

    <div class="box">
        <div class="box-header with-border">

            <h3 class="box-title">Relatório Individual</h3>

            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" title="Diminuir/Ampliar" data-widget="collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">
            <br />
            <div class="row">
                <div class="col-xs-12">

                    <div class="table-responsive no-padding">
                        <asp:GridView ID="gdvRelatorioIndividual" runat="server" CssClass="table table-hover" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField HeaderText="#" DataField="ava_codigo" Visible="false" />
                                <asp:BoundField HeaderText="Avaliação" DataField="ava_nome" />
                                <asp:BoundField HeaderText="Descrição" DataField="ava_descricao" />
                                <asp:BoundField HeaderText="Tipo" DataField="ava_tipo" />
                                <asp:BoundField HeaderText="Descrição" DataField="ava_descricao" Visible="false" />


                                <asp:HyperLinkField DataNavigateUrlFields="ava_codigo" DataNavigateUrlFormatString="~/paginas/RelatorioIndividualParticipante.aspx?avaliacao={0}" Text="Visualizar" HeaderText="Selecionar" />
                            </Columns>
                        </asp:GridView>
                        &nbsp;
                    </div>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
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

