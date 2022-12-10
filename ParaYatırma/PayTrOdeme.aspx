<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayTrOdeme.aspx.cs" Inherits="ParaYatırma.PayTrOdeme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PAYTR Ödeme .NET Örnek Sayfa</title>
</head>
<body>
    <script src="https://www.paytr.com/js/iframeResizer.min.js"></script>
    <iframe visible="true" runat="server" id="paytriframe" frameborder="0" scrolling="no" style="width: 100%;"></iframe>
    <script>iFrameResize({}, '#paytriframe');</script>
</body>
</html>