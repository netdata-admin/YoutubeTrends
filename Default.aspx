<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ OutputCache Duration="1000" VaryByParam="None" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Youtube Trend Videos - Expo - Netdata</title>
    <meta name="description" content="Youtube trend videos lists for all countries on one screen" />
    <link href="CSS/bootstrap.min.css" rel="stylesheet" />
    <link href="css/loader.css" rel="stylesheet" />
    <link href="CSS/style.css" rel="stylesheet" />

    <script src="JS/jquery-2.1.4.min.js"></script>
    <script src="JS/bootstrap.min.js"></script>
    <script src="js/Sharer.js"></script>

    <script type="text/javascript">
        $(window).load(function () {
            $(".loaderStore").fadeOut("slow");
        });
    </script>
    <script type="text/javascript" charset="windows-1254" src="JS/main.js"></script>
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-66551872-1', 'auto');
        ga('send', 'pageview');
    </script>
</head>
<body style="background-image: url('images/green.jpg');">
    <form id="form1" runat="server">
        <div class="loaderStore">
            <div class='uil-reload-css'>
                <div></div>
            </div>
            <div class="divLoaderMesaj">
                <span class="spnLoaderMesajMetin"></span>
            </div>
        </div>

        <nav style="background: #4285F4; border-color: #1995dc;" class="navbar  navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a style="padding-top: 10px;" class="navbar-brand" href="http://www.netdata.com/">
                        <img src="images/logofornetsite2.png" alt="Netdata" />
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li style="height: 32px;">
                            <div style="margin-top: 8px;" class="netdata-social-share text-center"></div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="body">
            <h4 class="col-xs-12 text-center" style="color: #fff; font-size: 25px;">Youtube Trend Video Links</h4>
            <div style="width: 1040px;border-radius:4px;padding: 20px;display: block;background-color: #fff;float: left;" class="tableList">
                <asp:Literal ID="ltrTablo" runat="server"></asp:Literal>
            </div>
        </div>

    </form>
</body>
</html>
