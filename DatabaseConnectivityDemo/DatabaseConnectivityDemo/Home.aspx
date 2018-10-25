<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DatabaseConnectivityDemo.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <center>
        <h2>Student Information</h2>
        <asp:GridView ID="gvStudent" runat="server"></asp:GridView>
</center>
</asp:Content>
