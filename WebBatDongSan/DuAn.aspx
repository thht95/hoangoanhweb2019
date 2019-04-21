<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DuAn.aspx.cs" Inherits="WebBatDongSan.DuAn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="StyleSheet.css"/>
</head>
<body>  
    <header>
        <asp:Image ID="imageheader" runat="server" Width="1200px" Height="200px" ImageUrl="Image/header.jpg"/>
    </header>
    <div id="main">
        <div>
            <ul id="menu">
                <li><a href="TrangChu.aspx" title="Thong tin Trang chu" target="_blank">TRANG CHỦ</a></li>
                <li><a href="TinDang.aspx" title="Cac tin duoc dang" target="_blank">TIN ĐĂNG</a></li>
                <li><a href="TinTuc.aspx" title="News" target="_blank">TIN TỨC</a></li>
                <li><a href="#" title="Cac Du an">DỰ ÁN</a></li>
                <li class="right"><a href="#">ĐĂNG KÝ</a></li>
                <li class="right"><a href="#">ĐĂNG NHẬP</a></li>
            </ul>
        </div>
        <div id="content">
            <form id="form1" runat="server">
            <div id="news">
                <div>
                    <div class="boxblue">MỤC DỰ ÁN</div>
                    <div>
                        <asp:DataList ID="listDuan" runat="server" RepeatColumns="3">
                            <ItemTemplate>
                                <div class="tinrao">
                                    <a href="#" title='<%# Eval("iPK_duanID") %>'><asp:Image ID="ImageNewsDA" runat="server" Height="150px" Width="250px" ImageUrl="Image/canho.jpg"/><br /></a><br />
                                    <b><asp:Label ID="lbTypeDA" runat="server" Text='<%# Eval("tenloai") %>'></asp:Label><br /></b>                                   
                                    <h3><a href="#" title='<%# Eval("iPK_duanID") %>'>
                                        <b><asp:Label ID="lbNameDA" runat="server" Text='<%# Eval("Tieude") %>'></asp:Label></b></a></h3>
                                    <asp:Label ID="lbAddressDA" runat="server" Text='<%# Eval("noidung") %>'></asp:Label><br /><br />
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>

            </div>
            <div id="search">
                &emsp;&emsp;&emsp;&emsp;&emsp;<asp:Button ID="btnDangtin" CssClass="button" runat="server" Text="ĐĂNG TIN"/><br /><br />
                <asp:Label ID="Label1" runat="server" Text="Loại BĐS"></asp:Label>&emsp;
                <asp:DropDownList ID="cboLoaiBDS" runat="server"></asp:DropDownList><br /><br />
                <asp:Label ID="Label2" runat="server" Text="Giá Từ"></asp:Label>&emsp;
                <asp:TextBox ID="txtGiatu" runat="server"></asp:TextBox><br /><br />
                <asp:Label ID="Label3" runat="server" Text="Địa Chỉ"></asp:Label>&emsp;
                <asp:DropDownList ID="cbodiachi" runat="server"></asp:DropDownList><br /><br />
                &emsp;&emsp;&emsp;&emsp;&emsp;<asp:Button ID="btnTimkiem" CssClass="button" runat="server" Text="TÌM KIẾM"/><br /><br />
            </div>
            </form>
        </div>
    </div>

    <footer>
        <div id="footer2"></div>
        <div id="footerbkg">
            <h3><b>Website Thong Tin Bat Dong San</b></h3>
            <p><b>Tong dai CSKH: 1900 2018</b></p>
            <p>Copyright © 2019 - 2025 Thongtinbds.com.vn.</p>
            <p>Email: thongtinbds@gmail.com | cskhthongtinbds@gmail.com</p>
            <hr />
            <p><b>Tru so chinh</b> : 96 Dinh Cong, Thanh Xuan, Ha Noi.</p>
        </div>
    </footer>  
</body>
</html>
