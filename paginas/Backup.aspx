<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPageAdministradorMaster.master" AutoEventWireup="true" CodeFile="Backup.aspx.cs" Inherits="paginas_Backup" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true"></asp:ScriptManager>    
    <h2 class="page-header">Backup</h2>
   
    <div class="row">
        <div class="col-md-12">
            <div class="box box-danger">
                <div class="box-header with-border">
                    <h3 class="box-title"><b>Backup</b></h3>
                </div>
                <div class="box-footer">
                    <div class="row no-print">
                        <div class="col-xs-12">
                           
                            <asp:LinkButton ID="lkbExportar" runat="server" CssClass="btn btn-danger pull-left" OnClick="lkbExportar_Click" Style="margin-right: 5px;" Text="<i class='fa fa-arrow-down'></i>  Efetuar Backup" />
                       
                            <br/>
                            <br/>
                            <br/>
           <asp:GridView
                        class="fc-grid"
                        ID="GridView1"
                        runat="server"
                        OnRowDataBound ="GridView1_RowDataBound"
                        AutoGenerateColumns="False"
                        CellPadding="4" ForeColor="Black" Width="865px" GridLines="None" Font-Size="12px" OnRowCommand="GridView1_RowCommand">
                        <AlternatingRowStyle BackColor="White" />
                        <HeaderStyle
                            Height="30px"
                            Font-Bold="true"
                            Font-Size="15px"
                            BorderColor="#CCCCCC"
                            BorderStyle="Solid"
                            BorderWidth="1px" ForeColor="White" />
                        <Columns>
                            <asp:BoundField DataField="bkp_codigo" HeaderText="Código" HeaderStyle-ForeColor="Black" />
                            <asp:BoundField DataField="bkp_nome" HeaderText="Nome" HeaderStyle-ForeColor="Black" />
                            <asp:BoundField DataField="bkp_data" HeaderText="Data" DataFormatString="{0:g}" HeaderStyle-ForeColor="Black" />

                            <asp:TemplateField HeaderText="Gerenciar" HeaderStyle-ForeColor="Black">
                                <ItemTemplate>
                                    <div class="box-footer">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <!-- conteúdo -->
                                                <!-- Button trigger modal -->
                                                <asp:HyperLink ID="hplBaixar" OnClick="bntBaixar_Click" CssClass="btn btn-primary btn-block btn-flat" Text="<i class='fa fa-wrench'></i> Baixar" runat="server"></asp:HyperLink>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>                           
                        </Columns>
                    </asp:GridView>
                          </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
    <!-- -------------------------------------------------------------------------------------------------------------------------- -->
    <!-- jQuery 2.1.3 -->
    <script src="../plugins/jQuery/jQuery-2.1.3.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    <!-- AdminLTE App -->
    <script src="../dist/js/app.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='../plugins/fastclick/fastclick.min.js'></script>
    <!-- -------------------------------------------------------------------------------------------------------------------------- -->
</asp:Content>

