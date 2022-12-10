<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ParaYatırma.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Para Yatırma</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="Login/images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="Login/css/util.css">
    <link rel="stylesheet" type="text/css" href="Login/css/main.css">
    <!--===============================================================================================-->
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <style>
        @media only screen and (min-width:150px) and (max-width:900px) { /*Mobil uygulama alanı*/
            #cvv-text {
                position: absolute;
                bottom: 0%;
                padding-left: 35%;
                width: 110%;
            }

            #cvv {
                padding-right: 50%;
                width: 50px;
            }

            #ay {
                padding-left: 40%;
            }

            #yil {
                position: absolute;
                padding-left: 65%;
            }

            #para {
                padding-left: 15%;
            }
        }

        .back {
            background-color: #cce2f0;
        }

        .div1 {
            height: 10px;
        }

        .div2 {
            height: 20px;
        }

        .div3 {
            height: 20px;
            width: 120px;
            margin-bottom: 10px;
        }

        .div4 {
            height: 20px;
            width: 30px;
            float: left;
            padding-left: 2%;
        }

        .div5 {
            padding-left: 10px;
            height: 20px;
            width: 80px;
            float: right;
            padding-left: 20%;
        }

        .div6 {
            height: 50px;
            width: 120px;
        }

        .div7 {
            padding-top: 10%;
        }

        .icon {
            width: 40px;
            height: 40px;
            margin-bottom: 10px;
        }

        .icon1 {
            width: 35px;
            height: 35px;
            margin-bottom: 10px;
        }

        .alt-cizgi {
            width: 40%;
            position: relative;
            border-bottom: 1px solid #b2b2b2;
        }

        .alt-cizgi1 {
            width: 30%;
            position: relative;
            border-bottom: 1px solid #b2b2b2;
        }

        .drop {
            font-family: Poppins-Regular;
            font-size: 15px;
            color: #555555;
            line-height: 1.2;
            display: block;
            background: transparent;
            padding: 0 0 5px 0;
            border: none;
        }

        .drop2 {
            font-family: Poppins-Regular;
            font-size: 15px;
            color: #555555;
            line-height: 1.2;
            display: block;
            background: transparent;
            padding: 0 0 5px 0;
            border: none;
        }
    </style>
    <script type="text/javascript">
        function SayiGirme(degisken) {
            degisken = (degisken) ? degisken : window.event;
            var charCode = (degisken.which) ? degisken.which : degisken.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
        function HarfGirme(degisken) {
            degisken = (degisken) ? degisken : window.event;
            var charCode = (degisken.which) ? degisken.which : degisken.keyCode;
            if ((charCode >= 65 && charCode <= 90) || (charCode >= 97 && charCode <= 122) || (charCode==32)) {
                return true;
            }
            return false;
        }
    </script>
</head>
<body>

    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-form-title" style="background-image: url(resim/ff.jpeg);">
                    <span class="login100-form-title-1">PARA YATIRMA
                    </span>
                </div>

                <form class="login100-form validate-form back" runat="server">
                    <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                        <div class="div1">
                            <span class="label-input100">
                                <asp:Image ID="Image1" runat="server" ImageUrl="resim\id.png" CssClass="icon" />
                            </span>
                        </div>
                        <div id="para">
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="input100" placeholder="ID"></asp:TextBox>
                        </div>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                        <div class="div1">
                            <span class="label-input100">
                                <asp:Image ID="Image2" runat="server" ImageUrl="resim\customer.png" CssClass="icon" />
                            </span>
                        </div>
                        <div id="para">
                            <asp:TextBox ID="TextBox2" runat="server" CssClass="input100" onkeypress="return HarfGirme(event)" placeholder="İsim Soyisim"></asp:TextBox>
                        </div>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                        <div class="div1">
                            <span class="label-input100">
                                <asp:Image ID="Image7" runat="server" ImageUrl="resim\mail.png" CssClass="icon" />
                            </span>
                        </div>
                        <div id="para">
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="input100" placeholder="Email"></asp:TextBox>
                        </div>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                        <div class="div1">
                            <span class="label-input100">
                                <asp:Image ID="Image3" runat="server" ImageUrl="resim\phone.png" CssClass="icon" />
                            </span>
                        </div>
                        <div id="para">
                            <asp:TextBox ID="TextBox3" runat="server" CssClass="input100" onkeypress="return SayiGirme(event)" placeholder="Telefon Numarası(555 555 5555)" MaxLength="11"></asp:TextBox>
                        </div>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                        <div class="div1">
                            <span class="label-input100">
                                <asp:Image ID="Image4" runat="server" ImageUrl="resim\location.png" CssClass="icon" />
                            </span>
                        </div>
                        <div id="para">
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="input100" placeholder="Adres"></asp:TextBox>
                        </div>
                        <span class="focus-input100"></span>
                    </div>

                    <div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
                        <div class="div2">
                            <span class="label-input100">
                                <asp:Image ID="Image6" runat="server" ImageUrl="resim\money.png" CssClass="icon" />
                            </span>
                        </div>
                        <div id="para" class="div3">
                            <div class="div4">
                                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="drop">
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="container-login100-form-btn">
                        <asp:Button ID="Button1" runat="server" Text="Para Yatır" CssClass="login100-form-btn" OnClick="Button1_Click" />
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!--===============================================================================================-->
    <script src="Login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="Login/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="Login/vendor/bootstrap/js/popper.js"></script>
    <script src="Login/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="Login/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="Login/vendor/daterangepicker/moment.min.js"></script>
    <script src="Login/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="Login/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="Login/js/main.js"></script>
</body>
</html>