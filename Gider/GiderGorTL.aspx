<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GiderGorTL.aspx.cs" Inherits="Gider.GiderGorTL" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <form id="form1" runat="server">
            <table class="table" style="width: 84%">
  <thead>
    <tr>
      <th scope="col" class="auto-style14" style="width: 61px">ID</th>
      <th scope="col" class="auto-style3" style="width: 216px">Ad Soyad</th>
      <th scope="col" class="auto-style19" style="width: 161px">Miktar</th>
      <th scope="col" class="auto-style15" style="width: 176px">Departman</th>
      <th scope="col" class="auto-style20" style="width: 209px">Currency</th>
      <th scope="col" class="auto-style14" style="width: 183px">Açıklama</th>
      <th scope="col" class="auto-style14">Tarih</th>
    </tr>
  </thead>
        </table>
    <div>

        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table style="width:100%;height:100%;outline-style:auto" border="0">
                    <tr>
                        <td style="width: 25px">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                        </td>
                        <td style="width: 249px">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("Kullaniciad") %>'></asp:Label>
                        </td>
                        <td style="width: 156px">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Miktar") %>'></asp:Label>
                        </td>
                        <td style="width: 174px">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Departman") %>'></asp:Label>
                        </td>
                        <td style="width: 197px">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Currency") %>'></asp:Label>
                        </td>
                        <td style="width: 188px">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("Aciklama") %>'></asp:Label>
                        </td>
                        <td style="width: 153px; margin-left: 40px;">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("KayitTarih") %>'></asp:Label>
                            &nbsp;</td>
                        <td>
                            <a href ="GiderDetaycs.aspx?id=<%#Eval("id") %>"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></a>

                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>

    </div>
    </form>
</asp:Content>
