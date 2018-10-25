<%@ Page Title="" Language="C#" MasterPageFile="~/CompanyMaster.Master" AutoEventWireup="true" CodeBehind="InsertStudent.aspx.cs" Inherits="DatabaseConnectivityDemo.InsertStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
        <table style="width:100%">
            <tr>
       
                <td style="width:20%">
                 <asp:Label ID="lblCode" runat="server" Text="Student Code" ></asp:Label>
                    </td>
                <td style="width:20%">
                 <asp:TextBox ID="txtCode" runat="server" TextMode="Number" ></asp:TextBox>
                    </td>

                <td style="width:60%">
                 <asp:RequiredFieldValidator ID="rfvCode" runat="server" Display="Dynamic" ControlToValidate="txtCode" ErrorMessage="Student Code Should be provided" ForeColor="Red"  ></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvCode" runat="server" Display="Dynamic" ControlToValidate="txtCode"  Type="Double" ErrorMessage="Code should be 4 digit long"></asp:RangeValidator> 
                    </td>
                </tr>
       
                 <tr> <%----Student NAme--%>
       
                <td style="width:20%">
                 <asp:Label ID="lblStudName" runat="server" Text="Student Name" ></asp:Label>
                    </td>
                <td style="width:20%">
                 <asp:TextBox ID="txtStudName" runat="server" TextMode="SingleLine" ></asp:TextBox>
                    </td>

                <td style="width:60%">
                 <asp:RequiredFieldValidator ID="rfvStudName" runat="server" Display="Dynamic" ControlToValidate="txtStudName" ErrorMessage="Student Name Should be provided" ForeColor="Red"  ></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvStudName" runat="server" Display="Dynamic" ControlToValidate="txtCode" Type="String" ErrorMessage="Student Name should have alphabets only"></asp:RangeValidator> 
                    </td>
                </tr>
       
            <tr> <%----Dept Code--%>
       
                <td style="width:20%">
                 <asp:Label ID="lblDeptCode" runat="server" Text="Department Code" ></asp:Label>
                    </td>
                <td style="width:20%">
                 <asp:TextBox ID="txtDeptCode" runat="server" TextMode="Number" ></asp:TextBox>
                    </td>

                <td style="width:60%">
                 <asp:RequiredFieldValidator ID="rfvDeptCode" runat="server" Display="Dynamic" ControlToValidate="txtDeptCode" ErrorMessage="Department Code Should be provided" ForeColor="Red"  ></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvDeptCode" runat="server" Display="Dynamic" ControlToValidate="txtCode" Type="String" ErrorMessage="Department Code should have Numbers only"></asp:RangeValidator> 
                    </td>
                </tr>

             <tr> <%----Date OF Birth Code--%>
       
                <td style="width:20%">
                 <asp:Label ID="lblDob" runat="server" Text="Date Of Birth" ></asp:Label>
                    </td>
                <td style="width:20%">
                 <asp:TextBox ID="txtDob" runat="server" TextMode="Date" ></asp:TextBox>
                    </td>

                <td style="width:60%">
                 <asp:RequiredFieldValidator ID="rfvDob" runat="server" Display="Dynamic" ControlToValidate="txtDob" ErrorMessage="DOB Should be provided" ForeColor="Red"  ></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvDob" runat="server" Display="Dynamic" ControlToValidate="txtCode" Type="String" ErrorMessage="DOB should have Date only"></asp:RangeValidator> 
                    </td>
                </tr>

             <tr> <%----Address--%>
       
                <td style="width:20%">
                 <asp:Label ID="lblAddress" runat="server" Text="Student Address" ></asp:Label>
                    </td>
                <td style="width:20%">
                 <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" ></asp:TextBox>
                    </td>

                <td style="width:60%">
                 <asp:RequiredFieldValidator ID="rfvAddress" runat="server" Display="Dynamic" ControlToValidate="txtAddress" ErrorMessage="Address Should be provided" ForeColor="Red"  ></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvAddress" runat="server" Display="Dynamic" ControlToValidate="txtAddress" Type="String" ErrorMessage="Address should have  only"></asp:RangeValidator> 
                    </td>
                </tr>
            <tr>
                <td>
                    <asp:Button ID="btnInsert" runat="server" Text="Insert Student Details" OnClick="btnInsert_Click"   />
                    </td>
                </tr>
         </table>

</asp:Content>
