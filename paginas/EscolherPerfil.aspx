<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EscolherPerfil.aspx.cs" Inherits="paginas_EscolherPerfil" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="UTF-8" />
    <title>SAM | Escolher Perfil</title>
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
            width: 270px;
        }
    </style>
</head>
<body style="background-color: #5faaaa">
    <form id="form1" runat="server" visible="true">
        <table runat="server" align="center">
            <tr style="height: 20px">
                <td></td>
            </tr>
            <tr>
                <td>
                    <div class="box-body" style="width: 810px">
                        <div class="login-logo">
                            <img src="../imagens/logo_login.png" />
                        </div>
                        <div class="box box-solid">
                            <div class="box-body" style="text-align: center">
                                <label style="font-size: 20px; color: #626262"><b>Bem-Vindo&nbsp;</b></label>
                                <asp:Label runat="server" ID="lblUsuario" Style="font-size: 20px; color: #626262" Font-Bold="True" ForeColor="#363636"></asp:Label>
                                <label style="font-size: 20px; color: #626262"><b>!</b></label><br />
                                <label style="font-size: 20px; color: #626262"><b>Selecione o perfil que deseja logar:</b></label>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        <table runat="server" align="center" style="height: 300px">
            <tr>
                <td style="text-align: center" class="auto-style1">
                    <div class="box box-solid">
                        <div>
                            <br />
                            <asp:Image ID="ImageButton1" ImageUrl="~/imagens/user-icon-512.png" Width="260px" Height="280px" runat="server" />
                        </div>
                    </div>
                </td>
                <td style="width: 20px"></td>
                <td style="width: 500px; height: 100px">
                    <div class="info-box" runat="server" id="divAdministradorMaster" visible="false">
                        <a href="AdministradorMaster.aspx">
                            <span class="info-box-icon bg-black"><i class="fa fa-gear"></i></span>
                            <div class="info-box-content">
                                <table>
                                    <tr style="height: 11px">
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:LinkButton runat="server" Style="font-size: 35px" ID="LinkButton1" class="box-title" OnClick="lkbAdministradorMaster_Click"><b>Administrador Master</b></asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>

                            </div>
                        </a>
                    </div>
                    <div id="divAdministradorComum" runat="server" class="info-box" visible="false">
                        <a href="AdministradorComum.aspx">
                            <span class="info-box-icon bg-orange"><i class="fa fa-gear"></i></span>
                            <div class="info-box-content">
                                <table>
                                    <tr style="height: 11px">
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:LinkButton runat="server" ID="lkbAdministradorComum" class="box-title" Style="font-size: 35px" OnClick="lkbAdministradorComum_Click"><b>Administrador Comum</b></asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </a>
                    </div>
                    <div id="divAvaliador" runat="server" class="info-box" visible="false">
                        <a href="Avaliador.aspx">
                            <span class="info-box-icon bg-blue"><i class="fa fa-file-text"></i></span>
                            <div class="info-box-content">
                                <table>
                                    <tr style="height: 11px">
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:LinkButton runat="server" ID="lkbAvaliador" class="box-title" Style="font-size: 35px" OnClick="lkbAvaliador_Click"><b>Avaliador</b></asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </a>
                    </div>
                    <div id="divParticipante" runat="server" class="info-box" visible="false">
                        <a href="Participante.aspx">
                            <span class="info-box-icon bg-red"><i class="fa fa-pencil"></i></span>
                            <div class="info-box-content">
                                <table>
                                    <tr style="height: 11px">
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:LinkButton runat="server" ID="lkbParticipante" class="box-title" Style="font-size: 35px" OnClick="lkbParticipante_Click"><b>Participante</b></asp:LinkButton>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </a>
                    </div>
                </td>
            </tr>
        </table>
        <%--<table id="Table1" runat="server" align="center">
            <tr>
                <td>
                    <div class="box-body" style="width: 810px">
                        <div class="box box-solid">
                            <div class="box-body" style="text-align: center">
                                <span class="progress-description" style="font-size: 18px"><b>Último Acesso:</b></span>
                                <asp:Label ID="lblUltimoAcesso" runat="server" Font-Bold="true" Font-Size="20px"></asp:Label>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>--%>
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
