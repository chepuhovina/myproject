<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ParameterControl.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Parameter Control </title>

    <link href="styles/style.css" rel="Stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Button ID="Show" runat="server" OnClick="Show_Click" Text="Show" />
&nbsp;<asp:Button ID="Validate" runat="server" OnClick="Validate_Click" Text="Validate" />
        
    </form>
</body>
</html>
