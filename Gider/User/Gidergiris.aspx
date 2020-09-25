<%@ Page Title="" Language="C#" MasterPageFile="~/Client.Master" AutoEventWireup="true" CodeBehind="~/User/Gidergiris.aspx.cs" Inherits="Gider.Gidergiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="canonical" href="https://gideralexa.azurewebsites.net/" />
      <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment-with-locales.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet"/>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
<script src="https://rawgit.com/tempusdominus/bootstrap-4/master/build/js/tempusdominus-bootstrap-4.js"></script>
<link href="https://rawgit.com/tempusdominus/bootstrap-4/master/build/css/tempusdominus-bootstrap-4.css" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
    <style type="text/css">
        .auto-style26 {
            display: block;
            width: 21%;
            height: calc(1.5em + .75rem + 2px);
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            margin-left: 50px;
            background-color: #fff;
        }
        .auto-style42 {
            width: 100%;
        }
        .auto-style43 {
            width: 98px;
        }
        .auto-style44 {
            display: block;
            width: 17%;
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
        .auto-style45 {
            width: 67px;
        }
        .auto-style46 {
            width: 104px;
        }
        .auto-style47 {
            width: 50%;
        }
        .auto-style49 {
            height: 26px;
        }
        .auto-style50 {
            text-align: right;
        }
        .auto-style51 {
            margin-left: 0;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="auto-style42">
        <tr>
            <td class="auto-style45">Gider Kur</td>
            <td><select class="auto-style26" id="Currency" runat="server" name="Currency">
    <option value="EUR">TL</option>
    <option value="USD">EUR</option>
    <option value="TL">USD</option>
</select></td>
        </tr>
    </table>
    <div>
        <table class="auto-style42">
            <tr>
                <td class="auto-style43">Departman :</td>
                <td><select class="auto-style44" id="Departman" runat="server">
    <option value="Operasyon">Operasyon</option>
    <option value="Muhasebe">Muhasebe</option>
    <option value="Ofis">Ofis</option>
</select> </td>
            </tr>
        </table>
    </div> 
  <div>
      <table class="auto-style47">
          <tr>
              <td class="auto-style46">Tarih : </td>
              <td><div class="container">
  <div class="row">
    <div class="col-sm-6">
      <div class="form-group">
        <div class="input-group date" id="datetimepicker1" data-target-input="nearest">
          <input type="text" class="form-control datetimepicker-input" data-target="#datetimepicker1" runat="server" id="datetime"/>
          <span class="input-group-addon" data-target="#datetimepicker1" data-toggle="datetimepicker">
                        <span class="fa fa-calendar"></span>
          </span>
        </div>
      </div>
    </div>
  </div>
</div></td>
              </tr>
      </table>
  </div>
    <div>

        <table class="auto-style42">
            <tr>
                <td class="auto-style49">Firma Adı</td>
                <td class="auto-style49">Açıklama</td>
                <td class="auto-style49">Miktar</td>
            </tr>
            <tr>
                <td><input type="text" class="form-control" placeholder="Firma Adı" aria-label="Username" aria-describedby="basic-addon1" id="Firma" runat="server"></td>
                <td><input type="text" class="form-control" placeholder="Açıklama" aria-label="Username" aria-describedby="basic-addon1" id="Aciklama" runat="server"></td>
                <td><input type="text" class="form-control" placeholder="Miktar" aria-label="Username" aria-describedby="basic-addon1" id="Miktar" runat="server"></td>
            </tr>
        </table>
        <div>
            <table class="auto-style42">
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style50">
                        <script>
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
                        <div style="margin-right:150px;"><asp:Button ID="Button1" runat="server" Text="Giriş" CssClass="auto-style51" OnClientClick="return preventMultipleSubmissions();" OnClick="Button1_Click2"/></div>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style50">
                        &nbsp;</td>
                </tr>
            </table>
        </div></form> 
      </form>
      </asp:Content>                     
<%--  <script>
      $('.dropdown-menu a').on('click', function () {
          $('.dropdown-toggle').html($(this).html() + '<span class="caret"></span>');
      })
  </script>
    <div class="auto-style33">
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.j>s"></script>
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
        <asp:Button ID="Button1" runat="server" Text="Giriş" OnClick="Button1_Click" OnClientClick="return preventMultipleSubmissions();"/>

    </div>--%>