<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ChonKhoa.aspx.cs" Inherits="ChonKhoa" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lbltitle" runat="server" Text="Danh Sách Khoa : "></asp:Label><br />
        <asp:DropDownList ID="dropKhoa" runat="server" AutoPostBack="True">
            <asp:ListItem>Cộng Nghệ Thông Tin</asp:ListItem>
            <asp:ListItem>Kế Toán</asp:ListItem>
            <asp:ListItem>Quản Trị</asp:ListItem>
        </asp:DropDownList><br />
        <asp:Label ID="lblRedult" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
