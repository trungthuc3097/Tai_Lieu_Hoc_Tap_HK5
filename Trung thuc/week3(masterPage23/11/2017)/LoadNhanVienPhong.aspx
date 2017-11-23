<%@ Page Title="" Language="C#" MasterPageFile="~/FisrtMaster.master" AutoEventWireup="true" CodeFile="LoadNhanVienPhong.aspx.cs" Inherits="LoadNhanVienPhong" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="holderContentHome" Runat="Server">
    <asp:DropDownList ID="drop" runat="server" AutoPostBack="True">
        <asp:ListItem Selected="True" Text="All"></asp:ListItem>
    </asp:DropDownList>
    <asp:GridView id="gridView" runat="server">
    
    </asp:GridView>
</asp:Content>
