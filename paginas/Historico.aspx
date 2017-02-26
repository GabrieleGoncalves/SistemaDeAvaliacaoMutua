<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPageAdministradorMaster.master" AutoEventWireup="true" CodeFile="Historico.aspx.cs" Inherits="paginas_Historico" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2 class="page-header">SAM | Histórico</h2>
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true"></asp:ScriptManager>
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title" style="font-size:20px"><i class="fa fa-clock-o"></i><b>&nbsp;Histórico</b></h3>
                </div>
                <div class="box-body">
                    <asp:GridView class="fc-grid"
                        ID="gridHistorico"
                        runat="server"
                        AutoGenerateColumns="False"
                        AllowPaging="True" PageSize="10"
                        ShowFooter="False"
                        CellPadding="4"
                        CellSpacing="10"
                        Width="850px"
                        GridLines="None"
                        Font-Size="12px"
                        ForeColor="Black"
                        OnPageIndexChanging="gridHistorico_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" />
                        <HeaderStyle Height="30px" Font-Bold="true" Font-Size="15px" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" ForeColor="White" />
                        <PagerStyle BorderColor="#3399FF" BorderStyle="Solid" Font-Bold="True" HorizontalAlign="Left" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="Código" HeaderStyle-ForeColor="Black" HeaderStyle-Width="60px">
                                <ItemTemplate>
                                    <asp:Label
                                        ID="lblCodigo"
                                        runat="server"
                                        Text='<%#Eval("aud_codigo")%>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Data" HeaderStyle-ForeColor="Black">
                                <ItemTemplate>
                                    <asp:Label
                                        ID="lblUsuario"
                                        runat="server"
                                        Text='<%#Eval("aud_data")%>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                            <asp:TemplateField HeaderText="Usuário" HeaderStyle-ForeColor="Black" HeaderStyle-Width="50px">
                                <ItemTemplate>
                                    <span class="label label-primary">
                                        <asp:Label
                                            ID="lblAtividade"
                                            runat="server"
                                            Text='<%#Eval("aud_pes_codigo")%>'>
                                        </asp:Label>
                                    </span>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:templatefield headertext="Atividade Anterior" headerstyle-forecolor="black" headerstyle-width="100px">
                                <itemtemplate>
                                    <asp:label
                                        id="lbldatahora"
                                        runat="server"
                                        text='<%#Eval("aud_antes")%>'>
                                    </asp:label>
                                </itemtemplate>
                            </asp:templatefield>

                            
                            <asp:BoundField HeaderText="Alteração" DataField="aud_depois" />
                            <asp:BoundField HeaderText="Tabela" DataField="aud_tabela" />
                            <asp:BoundField HeaderText="Operação" DataField="aud_operacao" />
                            
                        </Columns>
                    </asp:GridView>
                    

                        <div class="box-footer">
                        <div class="row no-print">
                            <div class="col-xs-12">
                                <asp:LinkButton ID="lkbSalvar" runat="server" CssClass="btn btn-primary pull-left" OnClick="lkbSalvar_Click" Style="margin-right: 5px;" Text="<i class='fa fa-save'></i>&nbsp;Salvar em Arquivo Excel" />
                            </div>
                        </div>
                    </div>
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
    <link rel="stylesheet" href="../script/jquery-ui.css" />
    <script src="../script/jquery-1.10.2.js"></script>
    <script src="../script/jquery-ui.js"></script>
    <link rel="stylesheet" href="../script/style.css" />
    <script>
        //var j = jQuery.noConflict();
        function pageLoad() {
            $(function () {
                $("#txtDataInicial").datepicker();
                $("#txtDataFinal").datepicker();
            });
        }
    </script>
</asp:Content>

