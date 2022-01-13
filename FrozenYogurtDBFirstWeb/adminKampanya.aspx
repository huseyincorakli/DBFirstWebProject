<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminKampanya.aspx.cs" Inherits="FrozenYogurtDBFirstWeb.adminKampanya" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <script type="text/javascript">
        function Confirm() {
            var result = window.confirm("Silmek istediğinize emin misiniz?");
            if (result)
                return true;
            else
                return false;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
      <div class="container">
        <h3>Kampanyalı Ürünler</h3>
        <form runat="server">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Başlık Id</th>
                        <th>Başlık Adi</th>
                        <th>Başlık Açıklaması</th>
                        <th>Başlık İçerik Adı</th>
                        <th>Başlık Fiyat</th>
                        <th>Sil</th>
                        <th>Guncelle</th>

                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="rptadminKampanya" runat="server">

                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:Label ID="adKampanyaLabel" runat="server" Text= '<%#Eval("BaslikId") %> '></asp:Label>
                                </td>
                                <td><%#Eval("BaslikAdi") %></td>
                                <td><%#Eval("BaslikAciklamasi") %></td>
                                <td><%#Eval("BaslikIcerikAdi") %></td>
                                <td><%#Eval("BaslikFiyat") %></td>
                                

                                <td>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btn btn-danger" OnClientClick="return Confirm();" OnClick="LinkButton1_Click">Sil</asp:LinkButton></td>

                                <td>
                                    <asp:HyperLink ID="uhlGuncelle" runat="server" CssClass="btn btn-warning" NavigateUrl='<%#"adminKampanyaUrunGuncelle.aspx?ID="+Eval("BaslikId") %>'>Güncelle</asp:HyperLink></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>

                </tbody>
            </table>
            <a href="KampanyaliUrunEkle.aspx" class="btn btn-info">Kampanyalı Urun Ekle</a>

        </form>
    </div>

</asp:Content>
