<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="FrozenYogurtDBFirstWeb.anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
     <script type="text/javascriptx">
         $(function () {
             $('#anasayfa').addClass('selected');
         });
     </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div id="body" class="home">
        <div class="header">
            <img src="images/bg-home.jpg" alt="">
            <div>
                <a href="#" style="font-size:medium">DONDURULMUŞ LEZZETLER</a>
            </div>
        </div>
        <asp:Repeater ID="rptAnasayfaUrun" runat="server">
            <ItemTemplate>
                 <div class="body" >
            <div>
                <div>
                    <h1><%# Eval("BaslikAdi") %>  </h1>
                    <h2><%#Eval("BaslikIcerikAdi") %>- <%#Eval("BaslikFiyat" ) %>₺</h2>
                    <p><%#Eval("BaslikAciklamasi") %></p>
                </div>
                <img src="images/yogurt.jpg" alt="">
            </div>
            <%--<p></p>--%>
        </div>
            </ItemTemplate>
        </asp:Repeater>
        

        <%--<div class="body">
            <div>
                <div>
                    <h1>Yeni Ürün </h1>
                    <h2>Sağlıklı Yoğurt</h2>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum..</p>
                </div>
                <img src="images/yogurt.jpg" alt="">
            </div>
        </div>--%>
        <div class="footer">
            <div>
                <ul>
                    <li>
                        <a href="urunler.aspx" class="product"></a>
                        <h1>Ürünler</h1>
                    </li>
                    <li>
                        <a href="https://www.sutas.com.tr/tr/sutas-hakkinda/bir-bakista-sutas/kisaca-sutas" class="about"></a>
                        <h1>Hikayemiz</h1>
                    </li>
                    <li>
                        <a href="#" class="flavor"></a>
                        <h1>Tatlar</h1>
                    </li>
                    <li>
                        <a href="iletisim.aspx" class="contact"></a>
                        <h1>İletişim</h1>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</asp:Content>
