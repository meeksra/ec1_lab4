<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Tao_Restaurant.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>Registration </legend>
                <asp:Label ID="lblFirtname" runat="server" Text="First Name"></asp:Label>
                <asp:TextBox ID="txtFirstname" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstname" ErrorMessage="Must enter First Name"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblLastname" runat="server" Text="Last Name"></asp:Label>
                <asp:TextBox ID="txtLastname" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastname" ErrorMessage="Must Enter Last Name"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Must be a valid email format" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Must enter an Email"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblDOB" runat="server" Text="DOB">
                    <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox></asp:Label><asp:RangeValidator ID="rvDOB" runat="server" ControlToValidate="txtDOB" ErrorMessage="Must be 18 years or older" MinimumValue="1/1/1900" MaximumValue="1/1/2001" Type="Date"></asp:RangeValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDOB" ErrorMessage="Must enter a DOB"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblPhone" runat="server" Text="Phone #"></asp:Label>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="Must be a valid phone number i.e ###-###-####" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPwd" TextMode="Password" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPwd" ErrorMessage="Must enter a password"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="lblConfirm" runat="server" Text="Confirm Password"></asp:Label>
                <asp:TextBox ID="txtConfirmPwd" TextMode="Password" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtConfirmPwd" ErrorMessage="Must confirm password"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
            </fieldset>
        </div>
        <p>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtConfirmPwd" ErrorMessage="Passwords do not match"></asp:CompareValidator>
        </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
