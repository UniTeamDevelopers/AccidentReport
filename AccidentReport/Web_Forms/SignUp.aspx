<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="AccidentReport.Web_Forms.WebForm2" %>

<html>
<head>
    <title></title>
    <link rel="stylesheet" href="../Content/bootstrap.css" type="text/css" />
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        * {
            box-sizing: border-box
        }

        /* Full-width input fields */
        input[type=text], input[type=password],.input {
            border-style: none;
            border-color: inherit;
            border-width: medium;
width: 83%;
            padding: 15px;
            margin: 5px 0 22px 0;
            display: inline-block;
            background: #f1f1f1;
        }

            input[type=text]:focus, input[type=password]:focus,.input:focus {
                background-color: #ddd;
                outline: none;
            }

        hr {
            border: 1px solid #f1f1f1;
            margin-bottom: 25px;
        }

        /* Set a style for all buttons */
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
            opacity: 0.9;
        }

            button:hover {
                opacity: 1;
            }

        /* Extra styles for the cancel button */
        .cancelbtn {
            padding: 14px 20px;
            background-color: #f44336;
        }

        /* Float cancel and signup buttons and add an equal width */
        .cancelbtn, .signupbtn {
            float: left;
            width: 50%;
        }

        /* Add padding to container elements */
        .container {
            padding: 16px;
        }

        /* Clear floats */
        .clearfix::after {
            content: "";
            clear: both;
            display: table;
        }

        /* Change styles for cancel button and signup button on extra small screens */
        @media screen and (max-width: 300px) {
            .cancelbtn, .signupbtn {
                width: 100%;
            }
        }

        .auto-style2 {
            width: 613px;
        }

        .main-center {
            margin-top: 30px;
            margin: 0 auto;
            max-width: 330px;
            padding: 40px 40px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="container">
            <h1 style="text-align: center">Sign Up</h1>
            <p style="text-align: center">Please fill in this form to create an account.</p>
            <div class="form-group">
                <asp:Panel ID="Panel1" runat="server" Width="646px">
                <div class="auto-style2">
                    <label for="Name"><b>First Name</b></label>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" Width="510px"></asp:TextBox>
                    <br />
                    <label for="Last Name"><b>Last Name</b></label>
                    <br />
                    <asp:TextBox ID="TextBox6" runat="server" Width="510px" ValidateRequestMode="Enabled"></asp:TextBox>
                    <br />
                    <label for="Driver Password"><b>Driver Password</b></label>
                    <br />
                    <input id="Password1" class="auto-style4" type="password"  />
                    <br />
                    <label for="Mobile Number"><b>Mobile Number</b></label>
                    <br />
                    <asp:TextBox ID="TextBox8" runat="server" Width="510px" ValidateRequestMode="Enabled"></asp:TextBox>
                    <br />
                    <label for="Driver Picture"><b>Driver Picture</b></label>
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <br />
                    <label for="Gender"><b>Gender</b></label>
                    <br />
                    <br />
                    <asp:RadioButtonList ID="ListGender" runat="server" Width="133px">
                        <asp:ListItem Value="M">Male</asp:ListItem>
                        <asp:ListItem Value="F">Female</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <br />
                    <label for="Licence Number"><b>Licence Number</b></label>
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" Width="510px" ValidateRequestMode="Enabled"></asp:TextBox>
                    <br />
                    <label for="Birthday"><b>Birthday</b></label>
                    <br />
                    <asp:TextBox ID="TextBox3" runat="server" Width="510px" ValidateRequestMode="Enabled"></asp:TextBox>
                    <br />
                    <label for="Email"><b>Email</b></label>
                    <br />
                    <asp:TextBox ID="TextBox4" runat="server" Width="510px" ValidateRequestMode="Enabled"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" BackColor="#66FF66" Font-Bold="True" Font-Size="Medium" Height="51px" Text="SignUp" Width="166px" />
                    <br />
                    <div class="clearfix">
                    </div>
                </div>
            </asp:Panel>
            </div>
            
        </div>
    </form>

</body>
</html>
