<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="FrozenYogurtDBFirstWeb.iletisim1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphHead" runat="server">
        <script type="text/javascript">
         $(function () {
			 $('#iletisim').addClass('selected');
			
         });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphBody" runat="server">
    <div id="body" class="contact">
			<div class="header">
				<div>
					<h1>Contact</h1>
				</div>
			</div>
      
			<div class="footer" >
				<div class="contact ">
					<h1 >DÜŞÜNCELERİNİZİ BİZİMLE PAYLAŞIN</h1>
					<form action="iletisim.aspx" runat="server"  >
                        <asp:TextBox ID="txtAdSoyad" runat="server" placeHolder="Ad Soyad" ></asp:TextBox>
                        <asp:TextBox ID="txtEmail" runat="server" placeHolder="Email"></asp:TextBox>
                        <asp:TextBox ID="txtKonu" runat="server" placeHolder="Konu"></asp:TextBox>
                        <asp:TextBox ID="txtMesaj" runat="server" placeHolder="Mesajınızı Buraya Yazınız..." TextMode="MultiLine"></asp:TextBox>
                        <asp:Button ID="btnGonder" runat="server" Text="GÖNDER"  BackColor="YellowGreen" ForeColor="WhiteSmoke" Width="20%" OnClick="btnGonder_Click" />

						<%--<input type="text" name="Name" value="Name" onblur="this.value=!this.value?'Name':this.value;" onfocus="this.select()" onclick="this.value='';">
						<input type="text" name="Email" value="Email" onblur="this.value=!this.value?'Email':this.value;" onfocus="this.select()" onclick="this.value='';">
						<input type="text" name="Subject" value="Subject" onblur="this.value=!this.value?'Subject':this.value;" onfocus="this.select()" onclick="this.value='';">
						<textarea name="meassage" cols="50" rows="7">Share your thoughts</textarea>
						<input type="submit" value="Send" id="submit">--%>
					</form>
				</div>
				<div class="section">
					<h1>Sizinle ilgilenmekten gurur duyarız</h1>
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
				</div>
			</div>
		</div>
</asp:Content>
