﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EcomRmaEvent_List.aspx.vb" Inherits="Dynamicweb.Admin.Admin.Module.eCom_Catalog.dw7.lists.EcomRmaEvent_List" %>

<%@ Register Assembly="Dynamicweb.Controls" Namespace="Dynamicweb.Controls" TagPrefix="dw" %>
<%@ Register TagPrefix="ecom" Namespace="Dynamicweb.Admin.eComBackend" Assembly="Dynamicweb.Admin" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title></title>
    <dw:ControlResources ID="ControlResources1" IncludePrototype="true" IncludeUIStylesheet="true" runat="server"></dw:ControlResources>
    <script type="text/javascript" src="../js/ecomLists.js"></script>

</head>
<body class="screen-container">
    <div class="card">
        <form id="form1" runat="server">
            <ecom:Toolbar ID="Toolbar" runat="server"></ecom:Toolbar>
            <dw:List ID="lstRmaEvents" runat="server" Title="" ShowTitle="false" StretchContent="false" PageSize="25">
                <Filters></Filters>
                <Columns>
                    <dw:ListColumn ID="colName" runat="server" Name="Event" EnableSorting="true" Width="300" />
                    <dw:ListColumn ID="colTranslated" runat="server" Name="Translated" EnableSorting="true" Width="300" />
                </Columns>
            </dw:List>
        </form>
    </div>
</body>
</html>
<%Dynamicweb.SystemTools.Translate.GetEditOnlineScript()%>
