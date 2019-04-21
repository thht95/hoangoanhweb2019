<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="WebBatDongSan.TrangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                <li><a href="#" title="Thong tin Trang chu">TRANG CHỦ</a></li>
                <li><a href="TinDang.aspx" title="Cac tin duoc dang" target="_blank">TIN ĐĂNG</a></li>
                <li><a href="TinTuc.aspx" title="News" target="_blank">TIN TỨC</a></li>
                <li><a href="DuAn.aspx" title="Cac Du an" target="_blank">DỰ ÁN</a></li>
                <li class="right"><a href="#">ĐĂNG KÝ</a></li>
                <li class="right"><a href="#">ĐĂNG NHẬP</a></li>
            </ul>
        </div>
        <div id="content">
            <form id="form1" runat="server" action="Timkiem.aspx" method="post">
            <div id="news">
                <div>
                    <div class="boxblue">Tin tức Bất Dộng Sản</div>
                    <div>
                        <asp:DataList ID="listTintuc" runat="server" RepeatColumns="3">
                            <ItemTemplate>
                                <div class="tinrao">
                                    <a href="Chitiet.aspx" title='<%# Eval("iPK_tintucID") %>'><asp:Image ID="ImageNewsTT" runat="server" Height="150px" Width="250px" ImageUrl="Image/canho.jpg"/><br /></a><br />
                                    <h3><a href="Chitiet.aspx" title='<%# Eval("iPK_tintucID") %>'>
                                        <b><asp:Label ID="lbNameTT" runat="server" Text='<%# Eval("tieude") %>'></asp:Label></b></a></h3>
                                    <asp:Label ID="lbAddressTT" runat="server" Text='<%# Eval("noidung") %>'></asp:Label><br />
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>

                <div>
                    <div class="boxblue">Cac tin duoc dang len</div>
                    <div>
                        <asp:DataList ID="listTindang" runat="server" RepeatColumns="3">
                            <ItemTemplate>
                                <div class="tinrao">
                                    <a href="#" title='<%# Eval("iPK_tindangID") %>'><asp:Image ID="ImageNewsTD" runat="server" Height="150px" Width="250px" ImageUrl="Image/canho.jpg"/><br /></a><br />
                                    <b><asp:Label ID="lbTypeTD" runat="server" Text='<%# Eval("tenloai") %>'></asp:Label><br /></b>                                   
                                    <h3><a href="#" title='<%# Eval("iPK_tindangID") %>'>
                                        <b><asp:Label ID="lbNameTD" runat="server" Text='<%# Eval("tieude") %>'></asp:Label></b></a></h3>
                                    <asp:Label ID="lbAddressTD" runat="server" Text='<%# Eval("vitri") %>'></asp:Label><br /><br />
                                    <asp:Label ID="lbCostTD" runat="server" Text='<%# Eval("gia") %>'></asp:Label><br />
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
                <%--<asp:Label ID="Label2" runat="server" Text="Giá Từ"></asp:Label>&emsp;
                <asp:TextBox ID="txtGiatu" runat="server"></asp:TextBox><br /><br />--%>
                <asp:Label ID="Label3" runat="server" Text="Địa Chỉ"></asp:Label>&emsp;
                <asp:DropDownList ID="cbodiachi" runat="server"></asp:DropDownList><br /><br />
                &emsp;&emsp;&emsp;&emsp;&emsp;<button class="button" id="btnTimkiem" type="submit">TÌM KIẾM</button><br /><br />
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
