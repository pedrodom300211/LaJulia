<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="ProyectoJulia.LogIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 226px;
        }
        .auto-style4 {
            height: 23px;
            width: 226px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">Bienvenido/a a la Julia </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Ingrese el nombre de usuario:</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtNombreUsuarioLogIn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Ingrese la contraseña del usuario:</td>
                    <td>
                        <asp:TextBox ID="txtPasswordLogIn" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="BtnAceptarLogIn" runat="server" OnClick="BtnAceptarLogIn_Click" Text="Aceptar" Width="82px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">¿No Tiene Usuario?
                        <asp:HyperLink ID="HpLnkCrearUsuario" runat="server">Crear Usuario</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
