<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GiderDetaycs.aspx.cs" Inherits="Gider.GiderDetaycs"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table style="width: 100%">
            <tr>
                <td>
                    <table style="width: 100%">
                        <tr>
                            <td style="width: 739px">
                                Ad Soyad:<input class="form-control" id="Isim" runat="server"></td>
                               
                        </tr>
                        <tr>
                            <td style="width: 739px">
                                <table style="width: 195%">
                                    <tr>
                                        <td style="width: 742px">Aciklama:</td>
                                        <td>Miktar:</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 739px">
                               <input class="form-control" id="Aciklama" runat="server"></td>
                            <td>
                                <input class="form-control" id="CurrencyMiktar" runat="server">
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 739px">
                                &nbsp;</td>
                            <td style="text-align: right">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 739px">
                                &nbsp;</td>
                            <td style="text-align: center">
                                <table style="width: 28%">
                                    <tr>
                                        <td style="width: 102px">
                                          <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/icons/clipart3011315.png" Height="43px" Width="51px" OnClick="ImageButton1_Click1" />
                                        </td>
                                        <td>
                                          <asp:ImageButton ID="ImageButton2" runat="server"  ImageUrl="~/icons/sign-delete-icon.png" Height="46px" OnClick="ImageButton2_Click" Width="57px"/>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
