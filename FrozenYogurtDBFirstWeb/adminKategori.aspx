<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adminKategori.aspx.cs" Inherits="FrozenYogurtDBFirstWeb.adminKategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
    <script type="text/javascript">
        function Confirm() {
            var result = window.confirm('Silmek istediğiniz kategoriye ait ürünler olabilir. \n Devam etmek istiyor musunuz ? ')
            if (result)
                return true;
            else
                return false;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div class="container">
        <h3>Kategoriler</h3>
        <form runat ="server">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Kategori Id</th>
                    <th>Kategori Adi</th>
                    <th>Kategori Aciklama</th>
                    <th>Sil</th>
                    <th>Guncelle</th>

                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptadminKategori" runat="server">

                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Label ID="labelId" runat="server" Text='<%#Eval("KategoriId") %>'></asp:Label>
                                <%--<%#Eval("KategoriId") %>--%>
                            </td>
                            <td><%#Eval("KategoriAdi") %></td>
                            <td><%#Eval("KategoriAciklama") %></td>

                            <td>
                                <asp:LinkButton ID="lbSil" runat="server" CssClass="btn btn-danger" OnClientClick="return Confirm();" OnClick="KategoriSil">Sil</asp:LinkButton>
                                <%--<asp:HyperLink ID="hlSil" runat="server" CssClass="btn btn-danger" NavigateUrl='<%#"KategoriSil.aspx?ID="+Eval("KategoriId") %>'>Sil</asp:HyperLink>--%>
                            </td>
                            <%--kategorinin idsiyle birlikte alır--%>
                            <td>
                                <asp:HyperLink ID="hlGuncelle" runat="server" CssClass="btn btn-warning" NavigateUrl='<%#"KategoriGuncelle.aspx?ID="+Eval("KategoriId") %>'>Güncelle</asp:HyperLink></td>

                        </tr>
                    </ItemTemplate>
                </asp:Repeater>

            </tbody>
        </table>
        <a href="KategoriEkle.aspx" class="btn btn-info">Kategori Ekle</a>

        </form>
    </div>
</asp:Content>
