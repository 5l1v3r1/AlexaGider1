<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="~/User/Gidergiris.aspx.cs" Inherits="Gider.Gidergiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="canonical" href="https://gideralexa.azurewebsites.net/" />
    <style type="text/css">
        .auto-style3 {
            width: 236px;
            text-align: center;
        }
        .auto-style4 {
            width: 100%;
            height: 70px;
            margin-bottom: 61px;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style15 {
            width: 159px;
            text-align: center;
        }
        .auto-style17 {
            width: 227px;
        }
        .auto-style19 {
            width: 256px;
            text-align: center;
        }
        .auto-style20 {
            text-align: center;
            width: 298px;
        }
        .auto-style23 {
            margin-left: 48px;
        }
        .auto-style24 {
            width: 255px;
        }
        .auto-style25 {
            margin-left: 90px;
        }
        .auto-style26 {
            display: block;
            width: 54%;
            height: calc(1.5em + .75rem + 2px);
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            margin-left: 30px;
            background-color: #fff;
        }
        .auto-style27 {
            display: block;
            width: 100%;
            height: calc(1.5em + .75rem + 2px);
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            margin-left: 19;
            background-color: #fff;
        }
        .auto-style28 {
            margin-left: 0;
        }
        .auto-style29 {
            text-align: center;
            width: 258px;
        }
        .auto-style30 {
            width: 201px;
        }
        .auto-style31 {
            width: 241px;
        }
        .auto-style32 {
            height: 67px;
        }
        .auto-style33 {
            margin-left: 1386px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <input type="submit" Value="SignOut" runat="server" id="cmdSignOut">
    <table class="table">
  <thead>
    <tr>
      <th scope="col" class="auto-style3">Ad Soyad</th>
      <th scope="col" class="auto-style19">Miktar</th>
      <th scope="col" class="auto-style15">Departman</th>
      <th scope="col" class="auto-style20">Currency</th>
      <th scope="col" class="auto-style14">Açıklama</th>
      <th scope="col" class="auto-style14">Tarih</th>
    </tr>
  </thead>
        </table>
        <div class="auto-style32">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style29"><asp:TextBox runat="server" ID="isimTxt" CssClass="auto-style28">
                                             </asp:TextBox></td>
                    <td class="auto-style17"><asp:TextBox runat="server" ID="Miktar">
                                             </asp:TextBox></td>
                    <td class="auto-style30">
                        <select class="auto-style27" id="Departman" runat="server">
    <option value="Operasyon">Operasyon</option>
    <option value="Muhasebe">Muhasebe</option>
    <option value="Ofis">Ofis</option>
</select> 
                    </td>
                    <td class="auto-style31" >   
    <select class="auto-style26" id="Currency" runat="server" name="Currency">
    <option value="EUR">EUR</option>
    <option value="USD">USD</option>
    <option value="TL">TL</option>
</select> </td>
                    <td class="auto-style24"><asp:TextBox runat="server" ID="AciklamaTxt" CssClass="auto-style23" TextMode="MultiLine" Width="240px"></asp:TextBox></td>
                    <td><asp:TextBox runat="server" ID="Tarihtxt" CssClass="auto-style25" Width="98px"></asp:TextBox></td>
                </tr>
            </table>
        </div>
      <script>
          $('.dropdown-menu a').on('click', function () {
              $('.dropdown-toggle').html($(this).html() + '<span class="caret"></span>');
          })
      </script>
    <div class="auto-style33">
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
 
<script type="text/javascript">

    var isSubmitted = false;

    function preventMultipleSubmissions() {

        if (!isSubmitted) {

            $('#<%=Button1.ClientID %>').val('Girdiniz Alındı');

            isSubmitted = true;

            return true;

        }

        else {

            return false;

        }

    }

</script>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" OnClientClick="return preventMultipleSubmissions();"/>

    </div>
    </form>
      </asp:Content>
                      
