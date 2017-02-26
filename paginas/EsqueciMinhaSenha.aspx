<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EsqueciMinhaSenha.aspx.cs" Inherits="paginas_EsqueciMinhaSenha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>SAM | Esqueci Minha Senha</title>
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
    <form id="form1" runat="server" defaultbutton="btnEnviar" defaultfocus="txtLogin" method="post">
        <div class="login-box">
            <div class="login-logo">
                <img src="../imagens/logo_login.png" />
            </div>
            <div class="login-box-body">
                <p class="login-box-msg" style="font-size: 18px"><b>Esqueci Minha Senha</b></p>
                <%--<form action="Default.aspx" method="post">--%>
                 <p style="font-size: 14px">Digite seu Email vinculado à conta SAM</p>
                    <div class="form-group has-feedback">
                       
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email" MaxLength="50"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvTxtLogin" ControlToValidate="txtEmail" ErrorMessage="Campo Obrigatório! " Font-Bold="true" runat="server" ForeColor="Red"></asp:RequiredFieldValidator>
                        

                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>
                    <div>
                        <a href="Login.aspx">Voltar</a>
                    </div>
                    <div class="row">
                        <div class="col-xs-8">
                           
                        </div>
                        <div class="col-xs-4">
                            <asp:LinkButton ID="btnEnviar" runat="server" CssClass="btn btn-primary btn-block btn-flat" Text="Enviar" OnClick="btnEnviar_Click"></asp:LinkButton>
                        </div>
                    </div>
                   
               <%-- </form>--%>
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
