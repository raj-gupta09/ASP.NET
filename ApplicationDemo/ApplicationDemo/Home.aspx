<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ApplicationDemo.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <b>Session ID :</b>
        <asp:label ID="lblSessionID" runat="server"></asp:label>
            <br /><br />
            <b> Session Counter </b>
            <asp:label ID="lblSessionCounter" runat="server" ></asp:label>
                <br /><br />
         <b>Application Counter</b>
            <asp:label ID="lblApplicationCounter" runat="server" ></asp:label>
                <br /><br />

                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </div>
    </form>
</body>
</html>
