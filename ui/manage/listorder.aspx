﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listorder.aspx.cs" Inherits="main.ui.manage.listorder" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quản lý nguyên liệu</title>
    <!--Basic Styles-->
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="../../assets/css/weather-icons.min.css" rel="stylesheet" />

    <!--Fonts-->
    <%--<link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,600,700,300" rel="stylesheet" />--%>

    <!--Beyond styles-->
    <link href="../../assets/css/beyond.min.css" rel="stylesheet" />
    <link href="../../assets/css/demo.min.css" rel="stylesheet" />
    <link href="../../assets/css/typicons.min.css" rel="stylesheet" />
    <link href="../../assets/css/animate.min.css" rel="stylesheet" />

    <!--Page Related styles-->
    <link href="../../assets/css/datatable.min.css" rel="stylesheet" />

    <!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
    <script src="../../assets/js/skins.min.js"></script>
</head>
<body>
    <!-- Loading Container -->
    <div class="loading-container">
        <div class="loader"></div>
    </div>
    <!--  /Loading Container -->
    <!-- Navbar -->
    <div class="navbar">
        <div class="navbar-inner">
            <div class="navbar-container">
                <!-- Navbar Barnd -->
                <div class="navbar-header pull-left" style="margin-top:4px;">
                    <small>
                        <a href="#" style="font-size: 21px;color: white;">Nhà hàng Nam Sơn</a>
                    </small>
                </div>
                <!-- /Navbar Barnd -->
                <!-- Sidebar Collapse -->
                <div class="sidebar-collapse" id="sidebar-collapse">
                    <i class="collapse-icon fa fa-bars"></i>
                </div>
                <!-- /Sidebar Collapse -->
                <!-- Account Area and Settings --->
                <div class="navbar-header pull-right">
                    <div class="navbar-account" style="font-size: 16px; color: white; padding: 10px;">
                        <a href="../login/dangnhap.aspx" style="color: white;"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a>
                    </div>
                </div>
                <div class="pull-right">
                    <div class="navbar-account" style="font-size: 16px; color: white; padding: 10px;">
                        <% Response.Write(Session["email"]); %>
                    </div>
                </div>
                <!-- /Account Area and Settings -->
            </div>
        </div>
    </div>
    <!-- /Navbar -->
    <!-- Main Container -->
    <div class="main-container container-fluid">
        <!-- Page Container -->
        <div class="page-container">
            <!-- Page Sidebar -->
            <div class="page-sidebar" id="sidebar">
                <!-- Sidebar Menu -->
                <ul class="nav sidebar-menu">
                    <!--Dashboard-->
                    <li>
                        <a href="index.html">
                            <i class="menu-icon glyphicon glyphicon-home"></i>
                            <span class="menu-text">Tổng quan</span>
                        </a>
                    </li>
                    <!--Tables-->
                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-table"></i>
                            <span class="menu-text">Quản lý user</span>

                            <i class="menu-expand"></i>
                        </a>

                        <ul class="submenu">
                            <li>
                                <a href="../user/listuser.aspx">
                                    <span class="menu-text">Danh sách user</span>
                                </a>
                            </li>
                            <li>
                                <a href="../user/changepass.aspx">
                                    <span class="menu-text">Đổi mật khẩu</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!--Forms-->
                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-pencil-square-o"></i>
                            <span class="menu-text">Quản lý nhân sự</span>
                        </a>
                    </li>
                    <!--Charts-->
                    <li>
                        <a href="../Custormers/Customers.aspx" class="menu-dropdown">
                            <i class="menu-icon fa fa-bar-chart-o"></i>
                            <span class="menu-text">Quản lý khách hàng</span>

                            <i class="menu-expand"></i>
                        </a>

                        <ul class="submenu">
                            <li>
                                <a href="../Custormers/Customers.aspx">
                                    <span class="menu-text">Danh sách khách hàng</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    
                    <!--Mail-->
                    <li>
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon fa fa-envelope-o"></i>
                            <span class="menu-text">Quản lý món ăn</span>

                            <i class="menu-expand"></i>
                        </a>

                        <ul class="submenu">
                            <li>
                                <a href="inbox.html">
                                    <span class="menu-text">Thêm món ăn</span>
                                </a>
                            </li>
                            <li>
                                <a href="message-view.html">
                                    <span class="menu-text">Danh sách món ăn</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                   
                    <!--Pages-->
                    <li class= "active open">
                        <a href="#" class="menu-dropdown">
                            <i class="menu-icon glyphicon glyphicon-paperclip"></i>
                            <span class="menu-text">Quản lý phiếu order</span>

                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                            <li>
                                <a href="../manage/addorder.aspx">
                                    <span class="menu-text">Tạo phiếu order</span>
                                </a>
                            </li>
                            <li class="active">
                                <a href="../manage/listorder.aspx">
                                    <span class="menu-text">Danh sách phiếu</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    
                    <!--Right to Left-->
                    <li>
                        <a href="material.aspx" class="menu-dropdown">
                            <i class="menu-icon fa fa-align-right"></i>
                            <span class="menu-text">Quản lý nguyên liệu</span>

                            <i class="menu-expand"></i>
                        </a>
                        <ul class="submenu">
                            <li>
                                <a href="addmaterial.aspx">
                                    <span class="menu-text">Thêm nguyên liệu</span>
                                </a>
                            </li>

                            <li class="active">
                                <a href="material.aspx">
                                    <span class="menu-text">Danh sách nguyên liệu</span>
                                </a>
                            </li>

                        </ul>
                    </li>
                </ul>
                <!-- /Sidebar Menu -->
            </div>
            <!-- /Page Sidebar -->
            
            <!-- Page Content -->
            <div class="page-content">
                <!-- Page Breadcrumb -->
                <div class="page-breadcrumbs">
                    <ul class="breadcrumb">
                        <li>
                            <i class="fa fa-home"></i>
                            <a href="#">Trang chủ</a>
                        </li>
                          <li>
                            <a href="#">Quản lý Order</a>
                        </li>               

                    </ul>
                </div>
                <!-- /Page Breadcrumb -->
                
                <!-- Page Body -->
                <div class="page-body">
                    <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <div class="widget">
                                <div class="widget-header ">
                                    <span class="widget-caption">Danh sách Order</span>
                                    <div class="widget-buttons">
                                        <a href="#" data-toggle="maximize">
                                            <i class="fa fa-expand"></i>
                                        </a>
                                        <a href="#" data-toggle="collapse">
                                            <i class="fa fa-minus"></i>
                                        </a>
                                        <a href="#" data-toggle="dispose">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="widget-body">
                                    <table class="table table-striped table-hover table-bordered datatable no-footer" id="simpledatatable">
							            <thead>
								            <tr>
									            <th class="text-center">STT</th>
									            <th class="sorting_asc">Số bàn</th>
									            <th>Ngày đặt</th>
                                                <th>Tên nhân viên</th>
									            <th>Tên khách hàng</th>
                                                <th>Tên món</th>
                                                <th>Số lượng</th>
								            </tr>
							            </thead>
							            <tbody>
                                            <asp:Repeater ID="rpt_order" runat="server">
                                                <ItemTemplate>
                                                    <tr>
										                <td class="text-center"><%# Container.ItemIndex+1 %></td>
                                                        <td><%# Eval("soban") %></td>
                                                        <td><%# Eval("ngay") %></td>
                                                        <td><%# Eval("nhan_vien") %></td>
                                                        <td><%# Eval("khach_hang") %></td>
                                                        <td><%# Eval("ten_mon") %></td>      
                                                        <td><%# Eval("so_luong") %></td>                                                      
									                </tr>
                                                </ItemTemplate>
                                            </asp:Repeater>
							            </tbody>
						            </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Page Body -->
            </div>
            <!-- /Page Content -->
        </div>
        <!-- /Page Container -->
        <!-- Main Container -->

    </div>

    <!--Basic Scripts-->
    <script src="../../assets/js/jquery.min.js"></script>
    <script src="../../assets/js/bootstrap.min.js"></script>
    <script src="../../assets/js/slimscroll/jquery.slimscroll.min.js"></script>

    <!--Beyond Scripts-->
    <script src="../../assets/js/beyond.min.js"></script>
    <!--Page Related Scripts-->
    <script src="../../assets/js/toastr/toastr.js"></script>

    <!--Page Related Scripts-->
    <script src="../../assets/js/datatable/ZeroClipboard.js"></script>
    <script src="../../assets/js/datatable.min.js"></script>
    <script>
        $('.datatable').DataTable({
            pageLength: 25,
            lengthMenu: [[25, 50, 75, -1], [25, 50, 75, "All"]],
            responsive: true,
            dom: '<"html5buttons"B>lTfgitp',
            buttons: [],
            language: {
                lengthMenu: "",
                zeroRecords: "Không có dữ liệu",
                info: "",
                infoEmpty: "",
                infoFiltered: "",
                search:       "Tìm kiếm:",
                paginate: {
                    "sFirst":    "Đầu",
                    "sPrevious": "Trước",
                    "sNext":     "Tiếp",
                    "sLast":     "Cuối"
                }
            }
        });
    </script>
    <script type="text/javascript">
        toastr.options = {
            top: 500,
            closeButton: true,
            progressBar: true,
            showMethod: 'slideDown',
            timeOut: 5000
        };
        <% 
        if (!Session["type"].Equals("")){
            Response.Write("setTimeout(function() {" +
                "toastr." + Session["type"] + "('" + Session["mess"] + "', 'Thông báo');" +
                "}, 100);");
            Session["type"] = "";
            Session["mess"] = "";
        }
        %>
    </script>
</body>
</html>

