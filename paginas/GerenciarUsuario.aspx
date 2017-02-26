<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPageAdministradorMaster.master" AutoEventWireup="true" CodeFile="~/paginas/GerenciarUsuario.aspx.cs" Inherits="paginas_GerenciarAdministradorComum" %>


<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2 class="page-header">Gerenciar Usuários</h2>
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true"></asp:ScriptManager>
    <div class="row">
        <div class="col-md-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Gerenciar Usuários</h3>
                </div>
                <div class="box-body">
                    <asp:DropDownList ID="ddlSelecionarPerfil" runat="server" OnSelectedIndexChanged="ddlSelecionarPerfil_SelectedIndexChanged" AutoPostBack="true">
                    </asp:DropDownList>
                    <p style="text-align: justify;"></p>


                    <%--Parte do Pesquisar por--%>
                    <div class="row">
                        <div class="col-xs-2">
                            <%--<label id="lblhtmlpesquisarPor">Pesquisar por</label>--%>
                            <asp:Label ID="lblPesquisarPor" runat="server" Text="Label">Pesquisar Por:</asp:Label>
                            <asp:Label ID="lblCodigo" runat="server" Visible="false"></asp:Label>
                            <asp:Label ID="lblMatricula" runat="server" Visible="false"></asp:Label>
                            <asp:DropDownList ID="ddlPesquisarPor" runat="server" CssClass="form-control">
                                <asp:ListItem>Selecione</asp:ListItem>
                                <asp:ListItem>Matricula</asp:ListItem>
                                <asp:ListItem>Email</asp:ListItem>
                                <asp:ListItem>Nome</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                        </div>

                        <div class="col-xs-4">
                            <asp:Label ID="lblPesquisar" runat="server" Text="Label">Pesquisar</asp:Label>
                            <%--<label id="lblhtmlPesquisar">Pesquisar</label>--%>
                            <asp:TextBox ID="txtPesquisar" runat="server" CssClass="form-control" placeholder="Pesquisar"></asp:TextBox>
                        </div>

                        <div class="col-xs-2">
                            <label style="color: #fff">abaixa o botão</label>
                            <asp:LinkButton ID="lkbPesquisar" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="<i class='fa fa-search'></i> Pesquisar" OnClick="lkbPesquisar_Click"></asp:LinkButton>
                        </div>
                    </div>
                    <%--botão desativar--%>
                    <div class="row">
                        <div class="col-lg-10">
                            <asp:LinkButton ID="btnDesativar" CommandName="Delete" runat="server" align="right" CssClass="btn btn-primary" Text="<i class='fa fa-power-off'></i> Desativar" OnClick="btnDesativar_Click"></asp:LinkButton>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-10">
                            <asp:LinkButton ID="btnAtivar" CommandName="Delete" runat="server" align="right" CssClass="btn btn-primary" Text="<i class='fa fa-power-on'></i> Ativar" OnClick="btnAtivar_Click"></asp:LinkButton>
                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="modal fade" id="ModalEditar2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content" style="text-align: center">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                    <h4 class="modal-title" id="myModalLabel"><b>Gerenciar Participante</b></h4>
                                </div>
                                <div class="modal-body">
                                    <div class="box-body">
                                        <!-- conteudo -->
                                        <div class="form-group">
                                            <table>
                                                <!--<div class="row">
                            <div class="col-xs-12">-->

                                                <tr>
                                                    <td>
                                                        <label>Nome: </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtNome1" CssClass="form-control-txt" runat="server" Width="350"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <br />
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>
                                                        <label>RG: </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtRG" CssClass="form-control-txt" runat="server"></asp:TextBox></td>
                                                    <td></td>
                                                    <td>
                                                        <label>CPF: </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCPF" CssClass="form-control-txt" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label>Telefone: </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtTelefone" CssClass="form-control-txt" runat="server"></asp:TextBox></td>
                                                    <td></td>
                                                    <td>
                                                        <label>Celular: </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCelular" CssClass="form-control-txt" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label>Email: </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtEmail" CssClass="form-control-txt" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <br />
                                                    </td>
                                                </tr>
                                            </table>
                                            <hr class="bg-blue" />
                                            <table>
                                                <tr>
                                                    <td>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label>Matricula: </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtMatricula" CssClass="form-control-txt" runat="server"></asp:TextBox></td>
                                                    <td></td>
                                                    <td>
                                                        <label>Data de Nascimento: </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtDataDeNascimento" CssClass="form-control-txt" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <br />
                                                    </td>
                                                </tr>
                                            </table>
                                            <hr style="color: #00ff90" />
                                            <table>
                                                <tr>
                                                    <td>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label>CEP: </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCEP" CssClass="form-control-txt" runat="server"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label>Rua: </label>
                                                    </td>
                                                    <td colspan="2">
                                                        <asp:TextBox ID="txtRua" CssClass="form-control-txt" runat="server" MaxLength="0" Width="350"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <p></p>
                                                    </td>
                                                    <td>
                                                        <label style="border-right-style">Número: </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtNumero" CssClass="form-control-txt" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <label>Bairro: </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtBairro" CssClass="form-control-txt" runat="server"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <label>Cidade: </label>
                                                    </td>
                                                    <td>
                                                        <asp:TextBox ID="txtCidade" CssClass="form-control-txt" runat="server"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        <label>Estado: </label>
                                                    </td>
                                                    <td>
                                                        <asp:DropDownList ID="ddlEstado" CssClass="form-control-ddl" runat="server">
                                        <asp:ListItem Selected="True">Selecione...</asp:ListItem>
                                        <asp:ListItem>Acre</asp:ListItem>
                                        <asp:ListItem>Alagoas</asp:ListItem>
                                        <asp:ListItem>Amapá</asp:ListItem>
                                        <asp:ListItem>Amazonas</asp:ListItem>
                                        <asp:ListItem>Bahia</asp:ListItem>
                                        <asp:ListItem>Ceará</asp:ListItem>
                                        <asp:ListItem>Distrito Federal</asp:ListItem>
                                        <asp:ListItem>Espiríto Santo</asp:ListItem>
                                        <asp:ListItem>Góias</asp:ListItem>
                                        <asp:ListItem>Maranhão</asp:ListItem>
                                        <asp:ListItem>Mato Grosso</asp:ListItem>
                                        <asp:ListItem>Mato Grosso do Sul</asp:ListItem>
                                        <asp:ListItem>Minas Gerais</asp:ListItem>
                                        <asp:ListItem>Paraná</asp:ListItem>
                                        <asp:ListItem>Paraíba</asp:ListItem>
                                        <asp:ListItem>Pará</asp:ListItem>
                                        <asp:ListItem>Piauí</asp:ListItem>
                                        <asp:ListItem>Pernambuco</asp:ListItem>
                                        <asp:ListItem>Rio de Janeiro</asp:ListItem>
                                        <asp:ListItem>Rio Grande do Norte</asp:ListItem>
                                        <asp:ListItem>Rio Grande do Sul</asp:ListItem>
                                        <asp:ListItem>Roraima</asp:ListItem>
                                        <asp:ListItem>Rondônia</asp:ListItem>
                                        <asp:ListItem>Santa Catarina</asp:ListItem>
                                        <asp:ListItem>São Paulo</asp:ListItem>
                                        <asp:ListItem>Sergipe</asp:ListItem>
                                        <asp:ListItem>Tocantins</asp:ListItem>
                                    </asp:DropDownList></td>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="btnFecharModalSelecionarUsuario" runat="server" CssClass=" btn btn-default" data-dismiss="modal" Text="Cancelar" />
                                <asp:LinkButton ID="lkbSalvarEditar" runat="server" CssClass=" btn btn-primary" OnClick="lkbSalvarEditar_Click" Text="<i class='fa fa-floppy-o'></i> Salvar" />
                            </div>
                        </div>
                    </div>
                    <script>
                        //function pageLoad() {

                        //function mostrar() {
                        //    $("#ModalEditar2").modal("show");
                        //}

                        //}
                    </script>
                    <asp:GridView
                        class="fc-grid"
                        ID="GridView1"
                        runat="server"
                        AutoGenerateColumns="False"
                        CellPadding="4" ForeColor="Black" Width="865px" GridLines="None" Font-Size="12px"
                        OnRowCommand="GridView1_RowCommand"
                        PageSize="2"
                        OnPageIndexChanging="gridEdicao_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" />
                        <HeaderStyle
                            Height="30px"
                            Font-Bold="true"
                            Font-Size="15px"
                            BorderColor="#CCCCCC"
                            BorderStyle="Solid"
                            BorderWidth="1px" ForeColor="White" />
                        <Columns>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:CheckBox ID="chkUsuario" runat="server" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkUsuario" runat="server" ToolTip='<%#Bind("pes_codigo")%>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField HeaderText="Código" DataField="pes_codigo" HeaderStyle-ForeColor="Black" />

                            <asp:TemplateField HeaderText="RA" HeaderStyle-ForeColor="Black">
                                <ItemTemplate>
                                    <asp:Label
                                        ID="lblRa"
                                        runat="server"
                                        Text='<%#Eval("pes_ra")%>'>
                                    </asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox
                                        ID="txtRa"
                                        runat="server"
                                        Width="60px"
                                        Text='<%#Eval("pes_ra")%>'>
                                    </asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Nome" HeaderStyle-ForeColor="Black">
                                <ItemTemplate>
                                    <asp:Label
                                        ID="lblNome"
                                        runat="server"
                                        Text='<%#Eval("pes_nome")%>'>
                                    </asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox
                                        ID="txtNome"
                                        runat="server"
                                        Width="60px"
                                        Text='<%#Eval("pes_nome")%>'>
                                    </asp:TextBox>
                                </EditItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Status" HeaderStyle-ForeColor="Black">
                                <ItemTemplate>
                                    <asp:Label
                                        ID="lblStatus"
                                        runat="server"
                                        Text='<%#Eval("usu_status")%>'>
                                    </asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Gerenciar" HeaderStyle-ForeColor="Black">
                                <ItemTemplate>
                                    <div class="box-footer">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                <!-- conteúdo -->
                                                <!-- Button trigger modal -->
                                                <asp:LinkButton ID="btnEditar" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="<i class='fa fa-wrench'></i> Editar" CommandName="editar" CommandArgument='<%#Eval("pes_codigo")%>'></asp:LinkButton>
                                            </div>


                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <%--<asp:BoundField HeaderText="Código" DataField="pes_codigo" />--%>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    <asp:Literal
        ID="lblMensagem"
        runat="server"
        ClientIDMode="Static"
        Text=""> </asp:Literal>
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

