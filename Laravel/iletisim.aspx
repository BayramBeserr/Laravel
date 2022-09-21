<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="Laravel.iletisim" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>İletişim</title>
    <link rel="stylesheet" href="style.css" />
    <style type="text/css">
        .auto-style1 {
            width: 59%;
            height: 426px;
            margin-left: 201px;
            background-color: #FF0000;
        }
        .auto-style2 {
            width: 153px;
            text-align: left;
        }
        .auto-style5 {
            color: #FFFFFF;
        }
        .auto-style6 {
            width: 153px;
            color: #FFFFFF;
            text-align: left;
        }
        .auto-style8 {
            text-align: left;
            width: 527px;
        }
        .auto-style9 {
            margin-left: 39px;
        }
        .auto-style10 {
            margin-left: 17px;
            margin-top: 0px;
        }
    </style>
</head>
<body>
     <div class="anasayfa" >
	
<div class="logo">
	
	<img src="image/laravel-logo.png" alt="logo"/>
	
</div>
<div class="menu">

	<ul>
		<li><a href="index.aspx">Anasayfa</a></li>
		<li><a href="laravel.aspx">Laravel</a></li>
		<li><a href="laravelforge.aspx">Laravel Forge</a></li>
        <li><a href="iletisim.aspx">İletişim</a></li>
	</ul>
</div>
    <form id="form1" runat="server">
        <div>

            <center><br />
            </center>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style6"><strong>Ad</strong></td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtFn" runat="server" Height="22px" Width="221px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFn" ErrorMessage="Ad boş olamaz"></asp:RequiredFieldValidator>
&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>Soyad</strong></td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtLn" runat="server" Height="23px" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLn" ErrorMessage="Soyad boş olamaz"></asp:RequiredFieldValidator>
&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong><span class="auto-style5">Email</span></strong></td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtEmail" runat="server" Height="23px" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email boş olamaz"></asp:RequiredFieldValidator>
&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="txtEmail" ErrorMessage="Geçersiz Email" ForeColor="#6666FF" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong><span class="auto-style5">Şifre</span></strong></td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtP1" runat="server" Height="22px" TextMode="Password" Width="221px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtP1" ErrorMessage="Şifre boş olamaz"></asp:RequiredFieldValidator>
&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong><span class="auto-style5">Tekrar Şifre</span></strong></td>
                    <td class="auto-style8">
                        <asp:TextBox ID="txtP2" runat="server" Height="23px" TextMode="Password" Width="221px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtP2" ErrorMessage="Şifre boş olamaz"></asp:RequiredFieldValidator>
&nbsp;
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtP2" ErrorMessage="Şifre eşleşmiyor" ForeColor="#0066FF"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>

            <center>

            <center>
                <td class="auto-style8">&nbsp;</td>
                </tr>

            <center>

            <center>
                <tr>
                    <td class="auto-style2"></td>
            </center>
            </center>
            </center>
            </center>
                    <td class="auto-style8">
                        <asp:Button ID="btnS" runat="server" CssClass="auto-style9" Text="Kayıt ol" Width="148px" />
                        <br />
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style10" Height="55px" Width="347px" />
                    </td>
                </tr>

            <center>

            <center>

            <center>

            <center>

            <center>

            <center>

            <center>

            <center>

            <center>

            <center>

            <center>

            <center>
                <center>
                    <center>
                </table>

            <center>

            <center>
                <br />
            </center>
            </center>
            </center>
            </center>
            </center>
            </center>
            </center>
            </center>
            </center>
            </center>
            </center>
            </center>
            </center>
            </center>
            </center>
            </center>

        </div>
    </form>
</body>
</html>
