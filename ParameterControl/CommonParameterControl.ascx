﻿<%@ Control Language="C#" CodeBehind="CommonParameterControl.ascx.cs" Inherits="ParameterControl.CommonParameterControl" %>

<div>
    <fieldset id="border">
        <legend id="paramType"><asp:Label ID="parType" runat="server"></asp:Label></legend><br />

        <asp:Label text="ID= " runat="server"></asp:Label>
        <asp:Label ID="Id" runat="server"></asp:Label><br />

        <asp:Label text="Name= " runat="server"></asp:Label>
        <asp:Label ID="Name" runat="server"></asp:Label><br />

        <asp:Label text="Description= " runat="server"></asp:Label>
        <asp:Label ID="Description" runat="server"></asp:Label><br /><br />

        <asp:Label text="Value= " runat="server"></asp:Label>
        <asp:TextBox ID="Value" runat="server"></asp:TextBox>
    </fieldset>
</div>