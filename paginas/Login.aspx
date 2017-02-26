<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="paginas_Login" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8" />
    <title>SAM | Login</title>
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
</head>
<body style="background-color: #5faaaa">
    <form id="form1" runat="server" defaultbutton="btnEntrar" defaultfocus="txtLogin" method="post">
        <div class="login-box">
            <div class="login-logo">
                <img src="../imagens/logo_login.png" />
            </div>
            <div class="login-box-body">
                <p class="login-box-msg" style="font-size: 18px"><b>Faça login para iniciar a sessão</b></p>
                <form action="Default.aspx" method="post">
                    <div class="form-group has-feedback">
                        <asp:TextBox ID="txtLogin" runat="server" CssClass="form-control" placeholder="Matrícula" MaxLength="7"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTxtLogin" ControlToValidate="txtLogin" ErrorMessage="Campo Obrigatório! " Font-Bold="true" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="revTxtLogin" ControlToValidate="txtLogin" ErrorMessage="Somente Números!" ValidationExpression="[0-9]+" runat="server" Font-Bold="true" ForeColor="Red"></asp:RegularExpressionValidator>
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control" placeholder="Senha" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTxtSenha" ControlToValidate="txtSenha" ErrorMessage="Campo Obrigatório! " Font-Bold="true" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row">
                        <%--<div class="col-xs-8">
                            <div class="checkbox icheck">
                                <label>
                                    <asp:CheckBox ID="ckbLembrar" runat="server" />
                                    Lembrar-me
                                </label>
                            </div>
                        </div>--%>
                        <div class="col-xs-4">
                            <asp:LinkButton ID="btnEntrar" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="Entrar" OnClick="btnEntrar_Click"></asp:LinkButton>
                        </div>
                    </div>
                    <a href="EsqueciMinhaSenha.aspx">Esqueci minha senha</a>
                </form>
            </div>
        </div>
        </form>
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
</body>
</html>
