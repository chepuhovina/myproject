<%@ Control Language="C#" CodeBehind="BoolParameterControl.ascx.cs" Inherits="ParameterControl.BoolParameterControl" %>

<link href="styles/style.css" rel="Stylesheet" />

<div runat="server">
    <fieldset id="border">
        <legend id="paramType"><asp:Label ID="parType" runat="server"></asp:Label></legend><br />

        <asp:Label text="ID= " runat="server"></asp:Label>
        <asp:Label ID="Id" runat="server"></asp:Label><br />

        <asp:Label text="Name= " runat="server"></asp:Label>
        <asp:Label ID="Name" runat="server"></asp:Label><br />

        <asp:Label text="Description= " runat="server"></asp:Label>
        <asp:Label ID="Description" runat="server"></asp:Label><br /><br />

        <asp:CheckBox ID="Value" runat="server"></asp:CheckBox>
        
    </fieldset>
</div>