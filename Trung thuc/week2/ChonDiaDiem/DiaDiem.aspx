<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DiaDiem.aspx.cs" Inherits="DiaDiem" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblTitle" runat="server" Text="Chọn các điểm trong sách: "></asp:Label><br />
        <asp:ListBox ID="lbDiaDiem" runat="server" SelectionMode="Multiple" AutoPostBack="True" ClientIDMode="AutoID" AppendDataBoundItems="False">
            <asp:ListItem>Vũng Tàu</asp:ListItem>
            <asp:ListItem>Nha Trang</asp:ListItem>
            <asp:ListItem>Phan Thiết</asp:ListItem>
            <asp:ListItem>Đà Lạt</asp:ListItem>
            <asp:ListItem>Đà Lạt</asp:ListItem>
            <asp:ListItem>Tuy Hòa</asp:ListItem>
    
        </asp:ListBox><br />
        <asp:Label ID="lblResult" runat="server"></asp:Label><br />
    </div>
    </form>
</body>
</html>
