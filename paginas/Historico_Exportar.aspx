<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Historico_Exportar.aspx.cs" Inherits="paginas_Historico_Exportar" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView class="fc-grid"
                        ID="gridHistorico"
                        runat="server"
                        AutoGenerateColumns="False"
                        ShowFooter="False"
                        CellPadding="4"
                        CellSpacing="10"
                        Width="850px"
                        GridLines="None"
                        Font-Size="12px"
                        ForeColor="Black">
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
                            <asp:templatefield headertext="atividade anterior" headerstyle-forecolor="black" headerstyle-width="100px">
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
                    

    </div>
    </form>
</body>
</html>
