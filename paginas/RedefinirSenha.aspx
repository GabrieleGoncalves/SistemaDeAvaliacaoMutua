<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RedefinirSenha.cs" Inherits="paginas_RedefinirSenha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8" />
    <title>SAM | Redefinição de Senha</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
    <!-- Bootstrap 3.3.2 -->
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="../bootstrap/font-awesome-4.3.0/css/font-awesome.css" rel="stylesheet" />
    <!-- Theme style -->
    <link href="../dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="../plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
        .auto-style1 {
            width: 464px;
        }
    </style>
</head>
<body style="background-color: #5faaaa">
    <form id="form1" runat="server">
        <table runat="server" align="center">
            <tr>
                <td>
                    <div class="box-body" style="width: 965px">
                        <br />
                        <div style="text-align: center">
                            <img src="../imagens/logo_login.png" />
                        </div>
                        <br />
                        <br />
                        <div class="box box-solid">
                            <div class="box-body" style="text-align: center">
                                <a style="font-size: 30px; color: #626262; font-weight: bold;">REDEFINIÇÃO DE SENHA</a>                                
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        <table runat="server" align="center">
            <tr>
                <td>                    
                    <table>
                        <tr>
                            <td class="auto-style1">
                                <div class="box box-solid">
                                    <table id="Table2" runat="server" style="text-align: left">
                                        <tr>
                                            <td>
                                                <div class="modal-header">
                                                    <a style="font-size: 30px; color: #626262; font-weight: bold;">&nbsp;&nbsp;Condições:</a>
                                                </div>
                                                <div class="modal-body">
                                                    <asp:Label ID="Label3" runat="server" Font-Size="18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- No máximo 15 caracteres </asp:Label>
                                                    <asp:RegularExpressionValidator ID="Condicao2" runat="server" ValidationExpression="[\W\w]{0,15}" ForeColor="Red" ControlToValidate="txtSenha" SetFocusOnError="true" Font-Size="15px" ErrorMessage="x" Font-Bold="true"></asp:RegularExpressionValidator>
                                                    <br />
                                                    <asp:Label ID="Label1" runat="server" Font-Size="18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- No mínimo 7 caracteres </asp:Label>
                                                    <asp:RegularExpressionValidator ID="Condicao1" runat="server" ValidationExpression="[\W\w]{7,}" ForeColor="Red" ControlToValidate="txtSenha" SetFocusOnError="true" Font-Size="15px" ErrorMessage="x" Font-Bold="true"></asp:RegularExpressionValidator>
                                                    <br />                                                    
                                                    <asp:Label ID="Label4" runat="server" Font-Size="18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- No mínimo 1 número </asp:Label>
                                                    <asp:RegularExpressionValidator ID="Condicao5" runat="server" ValidationExpression="^(?=.*\d).{1,}$" ForeColor="Red" ControlToValidate="txtSenha" SetFocusOnError="true" Font-Size="15px" ErrorMessage="x" Font-Bold="true"></asp:RegularExpressionValidator>
                                                    <br />
                                                    <asp:Label ID="Label5" runat="server" Font-Size="18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- No mínimo 1 letra maiúscula </asp:Label>
                                                    <asp:RegularExpressionValidator ID="Condicao6" runat="server" ValidationExpression="^(?=.*[A-Z]).{1,}$" ForeColor="Red" ControlToValidate="txtSenha" SetFocusOnError="true" Font-Size="15px" ErrorMessage="x" Font-Bold="true"></asp:RegularExpressionValidator>
                                                    <br />
                                                    <asp:Label ID="Label6" runat="server" Font-Size="18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- No mínimo 1 letra minúscula </asp:Label>
                                                    <asp:RegularExpressionValidator ID="Condicao7" runat="server" ValidationExpression="^(?=.*[a-z]).{1,}$" ForeColor="Red" ControlToValidate="txtSenha" SetFocusOnError="true" Font-Size="15px" ErrorMessage="x" Font-Bold="true"></asp:RegularExpressionValidator>
                                                    <br />
                                                    <asp:Label ID="Label7" runat="server" Font-Size="18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- No mínimo 1 caractere especial (Ex: !@#$%&?)  </asp:Label>
                                                    <asp:RegularExpressionValidator ID="Condicao4" runat="server" ValidationExpression="^(?=.*\W).{1,}$" ForeColor="Red" ControlToValidate="txtSenha" SetFocusOnError="true" Font-Size="15px" ErrorMessage="x" Font-Bold="true"></asp:RegularExpressionValidator>
                                                    <br />
                                                    <asp:Label ID="Label8" runat="server" Font-Size="18px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- Não deve conter espaço </asp:Label>
                                                    <asp:RegularExpressionValidator ID="Condicao3" runat="server" ValidationExpression="^(?!.*\s).{1,}$" ForeColor="Red" ControlToValidate="txtSenha" SetFocusOnError="true" Font-Size="15px" ErrorMessage="x" Font-Bold="true"></asp:RegularExpressionValidator>
                                                    <br />
                                                    <br />
                                                    <br />
                                                </div>
                                            </td>
                                        </tr>
                                        <tr style="height: 3px">
                                        <td></td>
                                    </tr>
                                    </table>
                                </div>
                            </td>
                            <td style="width: 20px"></td>
                            <td class="auto-style1">
                                <div class="box box-solid">
                                    <table id="Table1" runat="server" style="text-align: center; width: 450px">
                                        <tr>
                                            <td>
                                                <div class="modal-header" style="text-align: left">
                                                    <a style="font-size: 30px; color: #626262; font-weight: bold;">&nbsp;&nbsp;Digite a sua Nova Senha:</a>
                                                </div>
                                                <div class="modal-body" style="text-align: left">
                                                    <div class="form-group has-feedback">
                                                        <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control" placeholder="Nova Senha" TextMode="Password" CausesValidation="true" MaxLength="15"></asp:TextBox>
                                                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                                        <asp:RequiredFieldValidator ID="rfvTxtSenha" ControlToValidate="txtSenha" ErrorMessage="Campo Obrigatório!" Font-Bold="true" runat="server" ForeColor="Red" Font-Size="16px" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                    </div>
                                                    <div class="form-group has-feedback">
                                                        <asp:TextBox ID="txtMesmaSenha" runat="server" CssClass="form-control" placeholder="Digite mesma senha novamente" TextMode="Password"></asp:TextBox>
                                                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                                                        <asp:RequiredFieldValidator ID="rfvTxtMesmaSenha" ControlToValidate="txtMesmaSenha" ErrorMessage="Campo Obrigatório! " Font-Bold="true" runat="server" ForeColor="Red" Font-Size="16px" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                                        <br />
                                                        <asp:CompareValidator ID="cvTxtMesmaSenha" runat="server" ControlToCompare="txtSenha" ControlToValidate="txtMesmaSenha" Font-Bold="true" ErrorMessage="Digite a Mesma Senha Novamente!" ForeColor="Red" Font-Size="16px" SetFocusOnError="true" CausesValidation="true"></asp:CompareValidator>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-xs-5">
                                                            <asp:LinkButton ID="btnRedefinirSenha" runat="server" CssClass="btn btn-primary btn-block btn-flat" Font-Size="16px" Text="Redefinir Senha" OnClick="btnRedefinirSenha_Click"></asp:LinkButton>
                                                        </div>
                                                    </div>
                                                </div>
                                                <br />
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>                    
                </td>
            </tr>
        </table>        
        <!-- jQuery 2.1.3 -->
        <script src="../plugins/jQuery/jQuery-2.1.3.min.js"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- iCheck -->
        <script src="../plugins/iCheck/icheck.min.js" type="text/javascript"></script>
        <script>
            $(function () {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_square-blue',
                    radioClass: 'iradio_square-blue',
                    increaseArea: '20%' // optional
                });
            });
        </script>
    </form>
</body>
</html>
