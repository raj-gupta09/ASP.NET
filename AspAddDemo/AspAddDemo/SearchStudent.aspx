<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMaster.Master" AutoEventWireup="true" CodeBehind="SearchStudent.aspx.cs" Inherits="AspAddDemo.SearchStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">

    <table style="width:100%">
        <tr>
            <td>
                <asp:Label ID="lblCode" runat="server" Text="Student Code"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCode" TextMode="Number" runat="server"></asp:TextBox>
             </td>
             <td >
                <asp:Button ID="btnSearch" Text="Search" ValidationGroup="msgSearch" runat="server" OnClick="btnSubmit_Click" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvCode" runat="server" ControlToValidate="txtCode" 
                    ErrorMessage="Enter Student Code" ForeColor="Red"
                    ValidationGroup="msgSearch" >                </asp:RequiredFieldValidator>         
                <asp:RangeValidator ID="rvCode" runat="server" ControlToValidate="txtCode" MinimumValue="1000" MaximumValue="99999"
                 ErrorMessage=" Enter code in range 1000-99999"   ></asp:RangeValidator>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="lblName" runat="server" Text="Student Name"  ></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtName" runat="server" Enabled="false"  ></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" 
                    ErrorMessage="Enter Student Name" ForeColor="Red">                </asp:RequiredFieldValidator>         
                <asp:RegularExpressionValidator ID="reName" runat="server" ControlToValidate="txtName" ValidationExpression="[A-Z][a-z]+" ErrorMessage=" Enter code in Alphabates only"   ></asp:RegularExpressionValidator>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="lblDCode" runat="server" Text="Department Code" ></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDCode" TextMode="Number" runat="server" Enabled="false"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvDCode" runat="server" ControlToValidate="txtDCode" 
                    ErrorMessage="Enter Department Code" ForeColor="Red">                </asp:RequiredFieldValidator>         
                <asp:RangeValidator ID="rvDCode" runat="server" ControlToValidate="txtDCode" MinimumValue="10" MaximumValue="90"
                 ErrorMessage=" Enter code in range 10-90"   ></asp:RangeValidator>
            </td>
        </tr>

          <tr>
            <td>
                <asp:Label ID="lblDOB" runat="server" Text="Date of Birth"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtDOB" TextMode="Date" runat="server" Enabled="false"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvDOB" runat="server" ControlToValidate="txtDOB" 
                    ErrorMessage="Enter Date Of Birth" ForeColor="Red">                </asp:RequiredFieldValidator>         
               <%-- <asp:date ID="RangeValidator1" runat="server" ControlToValidate="txtDOB" MinimumValue="10" MaximumValue="90"
                 ErrorMessage=" Enter code in range 10-90"   ></asp:date>--%>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Enabled="false"></asp:TextBox>
             </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" 
                    ErrorMessage="Enter Address" ForeColor="Red">                </asp:RequiredFieldValidator>         
                <asp:RegularExpressionValidator ID="reAddress" runat="server" ControlToValidate="txtAddress" ValidationExpression="[A-Z][a-z]+" ErrorMessage=" Enter Address  in Alphabates only"   ></asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td >
                <asp:Button ID="btnUpdate" Text="Update" runat="server" OnClick="btnUpdate_Click"  />
            </td>
            <td >
                <asp:Button ID="btnDelete" Text="Delete" runat="server" OnClick="btnSubmit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
