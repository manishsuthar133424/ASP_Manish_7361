<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Login_page.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Member Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet" />
    <style>

        /* ── Reset ── */
        *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }

        /* ── Body – Garden Background ── */
        body {
            font-family: 'Poppins', sans-serif;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background-image: url("img/bg.jpeg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
        }

        /* Dark overlay so card pops */
        body::before {
            content: '';
            position: fixed;
            inset: 0;
            background: rgba(0, 0, 0, 0.28);
            z-index: 0;
        }

        /* ── Animated Rainbow Glow Border Wrapper ── */
        .card-wrap {
            position: relative;
            z-index: 10;
            border-radius: 30px;
            padding: 2.5px;
            background: linear-gradient(
                45deg,
                #00ffcc, #00aaff, #8a2be2, #ff1493, #00ffcc
            );
            background-size: 300% 300%;
            animation: borderSpin 4s ease infinite;
            box-shadow: 0 0 40px rgba(0, 255, 204, 0.40);
        }

        @keyframes borderSpin {
            0%   { background-position: 0% 50%; }
            50%  { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* ── Crystal Glass Card ── */
        .box {
            width: 430px;
            padding: 50px 44px 44px;
            background: rgba(255, 255, 255, 0.18);
            backdrop-filter: blur(28px);
            -webkit-backdrop-filter: blur(28px);
            border-radius: 28px;
            border: 1px solid rgba(255, 255, 255, 0.45);
            box-shadow:
                inset 0 1px 0 rgba(255, 255, 255, 0.55),
                inset 0 -1px 0 rgba(255, 255, 255, 0.10),
                0 20px 60px rgba(0, 0, 0, 0.28);
            text-align: center;
            animation: cardIn 0.75s cubic-bezier(.34,1.56,.64,1) both;
        }

        @keyframes cardIn {
            from { opacity: 0; transform: translateY(40px) scale(0.93); }
            to   { opacity: 1; transform: translateY(0) scale(1); }
        }

        /* ── Logo Icon ── */
        .logo-icon {
            width: 75px;
            height: 75px;
            background: linear-gradient(135deg, #00ffcc, #00aaff);
            border-radius: 22px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 18px;
            font-size: 36px;
            animation: iconPulse 2.5s ease-in-out infinite;
        }

        @keyframes iconPulse {
            0%,100% { box-shadow: 0 0 25px rgba(0,255,204,0.60); transform: scale(1); }
            50%      { box-shadow: 0 0 50px rgba(0,255,204,0.95); transform: scale(1.05); }
        }

        /* ── Heading ── */
        .box h2 {
            color: #fff;
            font-size: 27px;
            font-weight: 700;
            letter-spacing: 0.8px;
            text-shadow: 0 2px 15px rgba(0,0,0,0.40);
            margin-bottom: 5px;
        }

        .subtitle {
            color: rgba(255,255,255,0.62);
            font-size: 13px;
            margin-bottom: 32px;
        }

        /* ── Input Fields ── */
        .field {
            position: relative;
            margin-bottom: 18px;
            text-align: left;
        }

        .field-icon {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            font-size: 17px;
            z-index: 2;
            pointer-events: none;
        }

        .Tex {
            width: 100% !important;
            height: 52px !important;
            background: rgba(255, 255, 255, 0.18) !important;
            border: 1.5px solid rgba(255, 255, 255, 0.38) !important;
            border-radius: 14px !important;
            padding: 0 52px 0 46px !important;
            color: white !important;
            font-size: 14.5px !important;
            font-family: 'Poppins', sans-serif !important;
            outline: none !important;
            transition: all 0.30s ease !important;
            text-align: left !important;
        }

        .Tex::placeholder { color: rgba(255,255,255,0.58); }

        .Tex:hover:not(:focus) {
            border-color: rgba(255,255,255,0.60);
            background: rgba(255,255,255,0.24) !important;
            box-shadow: 0 0 18px rgba(255,255,255,0.18);
        }

        .Tex:focus {
            border-color: #00ffcc !important;
            background: rgba(255,255,255,0.25) !important;
            box-shadow: 0 0 24px rgba(0,255,204,0.38) !important;
        }

        /* ── Show/Hide Eye Button ── */
        .eye-btn {
            position: absolute;
            right: 13px;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            cursor: pointer;
            font-size: 17px;
            padding: 4px 6px;
            border-radius: 8px;
            line-height: 1;
            transition: transform 0.2s;
            z-index: 3;
        }
        .eye-btn:hover { transform: translateY(-50%) scale(1.25); }

        /* ── Forgot Password ── */
        .forgot-row {
            text-align: right;
            margin: -4px 0 22px;
        }
        .forgot-row a {
            color: rgba(255,255,255,0.70);
            font-size: 12.5px;
            text-decoration: none;
            transition: color 0.22s;
        }
        .forgot-row a:hover { color: #00ffcc; text-shadow: 0 0 12px #00ffcc; }

        /* ── Message Label ── */
        .lab_box {
            display: block;
            padding: 12px 16px;
            border-radius: 13px;
            font-size: 13.5px;
            font-weight: 500;
            text-align: center;
            margin-bottom: 16px;
            background: rgba(255,255,255,0.12);
            border: 1px solid rgba(255,255,255,0.28);
            backdrop-filter: blur(10px);
            animation: msgIn 0.32s ease;
            font-family: 'Poppins', sans-serif;
        }

        @keyframes msgIn {
            from { opacity: 0; transform: translateY(-7px); }
            to   { opacity: 1; transform: translateY(0); }
        }

        /* ── Login Button (ASP.NET Button) ── */
        .btn {
            width: 100% !important;
            height: 52px !important;
            border: none !important;
            border-radius: 14px !important;
            background: linear-gradient(90deg, #00ffcc, #00aaff) !important;
            color: #071730 !important;
            font-size: 16px !important;
            font-weight: 700 !important;
            font-family: 'Poppins', sans-serif !important;
            letter-spacing: 1.6px !important;
            cursor: pointer !important;
            position: relative;
            overflow: hidden;
            transition: transform 0.26s, box-shadow 0.26s !important;
        }

        .btn:hover {
            transform: translateY(-3px) !important;
            box-shadow: 0 10px 32px rgba(0,255,204,0.55) !important;
        }

        .btn:active { transform: translateY(0) !important; }

        /* Shimmer sweep on hover */
        .btn::after {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.30), transparent);
            transform: translateX(-100%);
            transition: transform 0.50s;
        }
        .btn:hover::after { transform: translateX(100%); }

        /* ── OR Divider ── */
        .or {
            display: flex;
            align-items: center;
            gap: 12px;
            margin: 22px 0;
        }
        .or span { flex: 1; height: 1px; background: rgba(255,255,255,0.25); }
        .or p { color: rgba(255,255,255,0.48); font-size: 12px; margin: 0; }

        /* ── Register Button ── */
        .reg-btn {
            width: 100%;
            height: 50px;
            border: 1.5px solid rgba(255,255,255,0.38);
            border-radius: 14px;
            background: rgba(255,255,255,0.09);
            color: white;
            font-size: 14.5px;
            font-weight: 600;
            font-family: 'Poppins', sans-serif;
            cursor: pointer;
            transition: all 0.26s;
        }
        .reg-btn:hover {
            background: rgba(255,255,255,0.20);
            border-color: rgba(255,255,255,0.65);
            transform: translateY(-2px);
            box-shadow: 0 8px 24px rgba(0,0,0,0.22);
        }

        /* ── Card Shake (Wrong Password) ── */
        @keyframes shake {
            0%,100% { transform: translateX(0); }
            20%      { transform: translateX(-9px); }
            40%      { transform: translateX(9px); }
            60%      { transform: translateX(-5px); }
            80%      { transform: translateX(5px); }
        }
        .shake { animation: shake 0.45s ease; }

        /* ── Responsive ── */
        @media (max-width: 500px) {
            .box { width: 90vw; padding: 38px 24px 36px; }
        }

    </style>
</head>
<body>

    <!-- Animated Glow Border + Crystal Glass Card -->
    <div class="card-wrap">
        <div class="box" id="loginCard">

            <!-- Logo -->
            <div class="logo-icon">🔐</div>
            <h2>Member Login</h2>
            <p class="subtitle">Welcome back! Sign in to continue.</p>

            <form id="form1" runat="server">

                <!-- Username Field -->
                <div class="field">
                    <span class="field-icon">👤</span>
                    <asp:TextBox
                        ID="TextBox1"
                        runat="server"
                        CssClass="Tex"
                        placeholder="Username"
                        autocomplete="off">
                    </asp:TextBox>
                </div>

                <!-- Password Field -->
                <div class="field">
                    <span class="field-icon">🔒</span>
                    <asp:TextBox
                        ID="TextBox2"
                        runat="server"
                        CssClass="Tex"
                        placeholder="Password"
                        TextMode="Password">
                    </asp:TextBox>
                    <button type="button" class="eye-btn" id="eyeBtn" onclick="togglePwd()">👁️</button>
                </div>

                <!-- Forgot Password -->
                <div class="forgot-row">
                    <a href="#" onclick="return false;">Forgot Password?</a>
                </div>

                <!-- Message Label (hidden by default, shown from C#) -->
                <asp:Label
                    ID="Label1"
                    runat="server"
                    CssClass="lab_box"
                    Visible="false">
                </asp:Label>

                <!-- LOGIN Button -->
                <asp:Button
                    ID="Button1"
                    runat="server"
                    CssClass="btn"
                    Text="🚀  LOGIN"
                    OnClick="Button1_Click" />

                <!-- OR Divider -->
                <div class="or">
                    <span></span><p>OR</p><span></span>
                </div>

                <!-- Register Button -->
                <button type="button" class="reg-btn"
                    onclick="alert('Registration page coming soon! 📝')">
                    📝 &nbsp; Create New Account
                </button>

            </form>
        </div>
    </div>

    <script type="text/javascript">

        // Show / Hide Password Toggle
        function togglePwd() {
            var pwd = document.getElementById('<%= TextBox2.ClientID %>');
            var btn = document.getElementById('eyeBtn');
            if (pwd.type === 'password') {
                pwd.type = 'text';
                btn.textContent = '🙈';
            } else {
                pwd.type = 'password';
                btn.textContent = '👁️';
            }
        }

        // Shake card on wrong login (triggered by hidden flag)
        window.onload = function () {
            var flag = document.getElementById('<%= Label1.ClientID %>');
            if (flag && flag.style.display !== 'none' &&
                flag.innerText.indexOf('Invalid') !== -1) {
                var card = document.getElementById('loginCard');
                card.classList.add('shake');
                setTimeout(function () { card.classList.remove('shake'); }, 500);
            }
        };

        // Enter key submits login
        document.addEventListener('keydown', function (e) {
            if (e.key === 'Enter') {
                document.getElementById('<%= Button1.ClientID %>').click();
            }
        });

    </script>
</body>
</html>