<%@ Page Title="" Language="C#" MasterPageFile="~/paginas/MasterPageAdministradorMaster.master" AutoEventWireup="true" CodeFile="CadastrarUsuario.aspx.cs" Inherits="paginas_CadastrarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2 class="page-header">Cadastrar Usuários</h2>

    <div class="row">
        <div class="col-xs-12">
            <div class="box box-default">
                <div class="box-header with-border">
                    <h3 class="box-title">Cadastrar Usuario</h3>
                </div>
                <div class="box-body">
                    <!-- conteudo -->
                    <div class="form-group">
                        <table>

                            <tr>
                                <td>
                                     <label>Perfil: <font color="red">*</font></label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlSelecionarPerfil" CssClass="form-control-ddl" runat="server">
                                        <asp:ListItem>Participante</asp:ListItem>
                                        <asp:ListItem>Avaliador</asp:ListItem>
                                        <asp:ListItem>Administrador Comum</asp:ListItem>

                                    </asp:DropDownList>
                                </td>
                                <td><font color="red">(* Campos Obrigatórios)</font></td>

                            </tr>
                           
                            <tr>
                                <td>
                                    <br />
                                </td>
                            </tr>


                            <tr>
                                <td>
                                    <label>Nome: <font color="red">*</font></label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtNome" CssClass="form-control-txt" runat="server" Width="350"></asp:TextBox></td>
                                <td>
                                    <asp:RequiredFieldValidator ID="rfvNome" ForeColor="red" runat="server" SetFocusOnError="true" ControlToValidate="txtNome" ErrorMessage="*Insira o Nome" EnableViewState="True"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td>
                                    <br />
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <label>RG: <font color="red">*</font></label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtRG" CssClass="form-control-txt" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ForeColor="red" ID="rfvRG" runat="server" ControlToValidate="txtRG" ErrorMessage="Insira o RG">*Insira o RG</asp:RequiredFieldValidator></td>
                                <td></td>
                                <td>
                                    <label>CPF: <font color="red">*</font></label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCPF" CssClass="form-control-txt" runat="server"></asp:TextBox>
                                
                                    <asp:RequiredFieldValidator ForeColor="red" ID="rfvCPF" runat="server" ControlToValidate="txtCPF" ErrorMessage="Insira o RG">*Insira o RG</asp:RequiredFieldValidator></td>
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
                                    <label>Email: <font color="red">*</font></label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEmail" CssClass="form-control-txt" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ForeColor="red" ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Insira o RG">*Insira o E-mail</asp:RequiredFieldValidator>
                                </td>
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
                                    <label>Matricula: <font color="red">*</font></label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMatricula" CssClass="form-control-txt" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ForeColor="red" ID="rfvMatricula" runat="server" ControlToValidate="txtMatricula" ErrorMessage="Insira o RG">*Insira a matrícula</asp:RequiredFieldValidator>
                                </td>
                                <td></td>
                                
                                <td>
                                    <label>Data de Nascimento: <font color="red">*</font></label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDataDeNascimento" CssClass="form-control-txt" TextMode="Date" runat="server"></asp:TextBox>
                                     <asp:RequiredFieldValidator ForeColor="red" ID="rfvData" runat="server" ControlToValidate="txtRG" ErrorMessage="Insira o RG">*Insira a data de nascimento</asp:RequiredFieldValidator>
                                </td>
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
                                    <asp:TextBox ID="txtNumero" CssClass="form-control-txt" runat="server"></asp:TextBox></td>
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
                                    <asp:TextBox ID="txtBairro" CssClass="form-control-txt" runat="server"></asp:TextBox></td>

                                <td>
                                    <label>Cidade: </label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCidade" CssClass="form-control-txt" runat="server"></asp:TextBox></td>
                                <td>
                                    <label>Estado: </label>
                                </td>
                                <td>
                                    <asp:DropDownList ID="ddlEstado" CssClass="form-control-ddl" runat="server">
                                        <asp:ListItem Selected="True"></asp:ListItem>
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
                            </tr>

                            <tr>
                                <td>
                                    <br />
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <asp:Button ID="btnCadastrarAdm" class="btn btn-primary btn-block btn-flat" runat="server" Text="Cadastrar" OnClick="btnCadastrarAdm_Click" /></td>
                            </tr>

                            <tr>
                                <td>
                                    <br />
                                </td>
                            </tr>

                        </table>
                    </div>
                </div>
                <div class="box-footer">
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
