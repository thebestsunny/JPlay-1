<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 16/7/7
  Time: 下午9:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <![endif]-->
    <meta name="description" content="File Upload widget with multiple file selection, drag&amp;drop support, progress bars, validation and preview images, audio and video for jQuery. Supports cross-domain, chunked and resumable file uploads and client-side image resizing. Works with any server-side platform (PHP, Python, Ruby on Rails, Java, Node.js, Go etc.) that supports standard HTML form file uploads.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <    <!-- Web App Capable-->
    <meta name="viewport" content="width=device-width,height=device-height,inital-scale=1.0,maximum-scale=1.0,user-scalable=no;">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">

    <!-- Basic Page Needs
  ================================================== -->
    <meta charset="utf-8">
    <title>Uername的视频</title>
    <meta name="description" content="Free Responsive Html5 Css3 Templates | zerotheme.com">
    <meta name="author" content="www.zerotheme.com">

    <!-- Mobile Specific Metas
  ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0,user-scalable=no,maximum-scale=1.0">
    <!-- CSS
  ================================================== -->
    <link rel="stylesheet" href="css/zerogrid.css">
    <link rel="stylesheet" href="css/profile-style.css">
    <link rel="stylesheet" href="css/menu.css">
    <link rel="stylesheet" href="bootstrap-3.3.5-dist/css/bootstrap.min.css">
    <!-- Owl Carousel Assets -->
    <link href="css/owl.carousel.css" rel="stylesheet">
    <link href="css/owl.theme.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- blueimp Gallery styles -->
    <link rel="stylesheet" href="//blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
    <!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
    <link rel="stylesheet" href="css/jquery.fileupload.css">
    <link rel="stylesheet" href="css/jquery.fileupload-ui.css">
    <!-- CSS adjustments for browsers with JavaScript disabled -->
    <noscript><link rel="stylesheet" href="css/jquery.fileupload-noscript.css"></noscript>
    <noscript><link rel="stylesheet" href="css/jquery.fileupload-ui-noscript.css"></noscript>

    <!--[if lt IE 8]>
    <div style=' clear: both; text-align:center; position: relative;'>
        <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
            <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
    </div>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="js/jsp5.js"></script>
    <script src="js/css3-mediaqueries.js"></script>
    <![endif]-->
    <script src="js/jquery-2.1.1.js"></script>
    <script src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>


    <!-- 获取时间-->
    <script language="javascript">
        function realSysTime(clock){
            var now=new Date(); //创建Date对象
            var year=now.getFullYear(); //获取年份
            var month=now.getMonth(); //获取月份
            var date=now.getDate(); //获取日期
            var hour=now.getHours(); //获取小时
            var minute=now.getMinutes(); //获取分钟
            month=month+1;
            var time;
            var complete_time;
            if(minute<10) {
                complete_time = year + "年" + month + "月" + date + "日 " + " " + hour + ":0" + minute; //组合系统时间
                time=hour + ":0" + minute;
            }
            else
            {
                complete_time=year+"年"+month+"月"+date+"日 "+" "+hour+":"+minute; //组合系统时间
                time=hour + ":" + minute;
            }
            clock.innerHTML=complete_time; //显示系统时间

        }
        window.onload=function(){
            window.setInterval("realSysTime(clock)",1000); //实时获取并显示系统时间
        }
    </script>
    <!-- Opacity -->
    <style>
        body {background-color: #f0f0f0}

    </style>

</head>
<body id="wrapper" >
<div class="wrap-body">


    <!--////////////////////////////////////Header-->
    <header>
        <div class="wrap-header">
            <div class="zerogrid">
                <div class="row">
                    <a href="index.jsp" class="logo"><img src="images/logo.png" /></a>
                    <ul class="social">
                        <li><a href="upload.jsp" title="Upload Video"  ><i class="fa fa-upload"></i>上传</a></li>
                        <% if(0==1)
                        {%>
                        <li><a href="login.jsp" title="Log in" ><i class="fa fa-user"></i>登陆</a></li>
                        <li><a href="register.jsp" title="Register" ><i class="fa fa-bell"></i>注册</a></li>
                        <%}else{ %>
                        <li><a href="userProfile.jsp" title="Profile"><i class="fa fa-renren"></i>个人信息</a></li>
                        <%} %>
                    </ul>
                </div>
            </div>
        </div>
    </header>
    <div class="profile">
        <div class="profile-table">
            <!-- 左边栏，罗列出功能-->
            <h2 style="font-family: 微软雅黑;"><b>功能</b></h2>
            <hr  style="height:1px;border:none;border-top:1px solid #555555;" />
            <ul style="color: grey">
                <li><a href="#"><i class="fa fa-info" style="color:limegreen"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;个人信息</a></li>
                <li><a href="#"><i class="fa fa-video-camera" style="color:orange"></i>&nbsp;我的收藏</a></li>
                <li><a href="#"><i class="fa fa-tags" style="color:red;"></i>&nbsp;我的订阅</a></li>
                <li><a href="#"><i class="fa fa-comment" style="color:dodgerblue"></i>&nbsp;我的私信</a></li>
                <li><a href="#"><i class="fa fa-home" style="color:skyblue"></i>&nbsp;兴趣部落</a></li>
                <li><a href="myMovie.jsp"><i class="fa fa-apple" style="color: #ff72c4"></i>&nbsp;我的上传</a></li>
            </ul>
        </div>
        <div class="profile-content">
            <!--右边栏，罗列该功能显示的信息 -->
            <%--
             <!-- 显示个人信息页面-->
             <h2><i class="fa fa-info" style="color: palevioletred"></i>&nbsp;个人信息</h2>
             <form class="content">
                 <i class="icon-bar"></i>
                 <p>昵称：<input required type="text" value="" name="user.username"></p>
                 <p>邮箱：<input type="email" value="" name="user.email"></p>
                 <p>性别：<label><input type="radio" value="" name="user.gender">男</label>
                     <label><input type="radio" value="" name="user.gender">女</label>
                 </p>
                 <p>生日：<input type="date" value="" name="user.birthday"></p>
                 <p>真实姓名：<input type="text" value="" name="user.realname"></p>
                 <p>学校：<input type="text" value="" name="user.university"></p>
                 <p>个性签名：<textarea value="" name="user.signature"></textarea></p>
                 <button type="reset" id="reset_button">清 除</button>
                 <button type="submit" id="submit_button" >提 交</button>
                 <p>&nbsp;</p>
             </form>
             <!-- 显示用户的收藏视频 -->
             <h2><i class="fa fa-video-camera" style="color: palevioletred"></i>&nbsp;我的收藏</h2>
             <div class="content zerogrid" style="width: 100%">
                 <div class="row">
                     <div class="col-1-4">
                         <div class="wrap-col">
                             <div class="wrap-vid">
                                 <div class="zoom-container">
                                     <a href="single.jsp">
                                                     <span class="zoom-caption">
                                                         <i class="icon-play fa fa-play"></i>
                                                     </span>
                                         <img src="images/3.jpg" />
                                     </a>
                                 </div>
                                 <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                 <div class="info">
                                     <h5>By <a href="#">Kelvin</a></h5>
                                     <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                     <span><i class="fa fa-heart"></i>1,200</span>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <div class="col-1-4">
                         <div class="wrap-col">
                             <div class="wrap-vid">
                                 <div class="zoom-container">
                                     <a href="single.jsp">
                                                     <span class="zoom-caption">
                                                         <i class="icon-play fa fa-play"></i>
                                                     </span>
                                         <img src="images/4.jpg" />
                                     </a>
                                 </div>
                                 <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                 <div class="info">
                                     <h5>By <a href="#">Kelvin</a></h5>
                                     <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                     <span><i class="fa fa-heart"></i>1,200</span>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <div class="col-1-4">
                         <div class="wrap-col">
                             <div class="wrap-vid">
                                 <div class="zoom-container">
                                     <a href="single.jsp">
                                                     <span class="zoom-caption">
                                                         <i class="icon-play fa fa-play"></i>
                                                     </span>
                                         <img src="images/5.jpg" />
                                     </a>
                                 </div>
                                 <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                 <div class="info">
                                     <h5>By <a href="#">Kelvin</a></h5>
                                     <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                     <span><i class="fa fa-heart"></i>1,200</span>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <div class="col-1-4">
                         <div class="wrap-col">
                             <div class="wrap-vid">
                                 <div class="zoom-container">
                                     <a href="single.jsp">
                                                     <span class="zoom-caption">
                                                         <i class="icon-play fa fa-play"></i>
                                                     </span>
                                         <img src="images/14.jpg" />
                                     </a>
                                 </div>
                                 <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                 <div class="info">
                                     <h5>By <a href="#">Kelvin</a></h5>
                                     <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                     <span><i class="fa fa-heart"></i>1,200</span>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
                 <div class="row">
                     <div class="col-1-4">
                         <div class="wrap-col">
                             <div class="wrap-vid">
                                 <div class="zoom-container">
                                     <a href="single.jsp">
                                                     <span class="zoom-caption">
                                                         <i class="icon-play fa fa-play"></i>
                                                     </span>
                                         <img src="images/1.jpg" />
                                     </a>
                                 </div>
                                 <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                 <div class="info">
                                     <h5>By <a href="#">Kelvin</a></h5>
                                     <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                     <span><i class="fa fa-heart"></i>1,200</span>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <div class="col-1-4">
                         <div class="wrap-col">
                             <div class="wrap-vid">
                                 <div class="zoom-container">
                                     <a href="single.jsp">
                                                     <span class="zoom-caption">
                                                         <i class="icon-play fa fa-play"></i>
                                                     </span>
                                         <img src="images/2.jpg" />
                                     </a>
                                 </div>
                                 <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                 <div class="info">
                                     <h5>By <a href="#">Kelvin</a></h5>
                                     <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                     <span><i class="fa fa-heart"></i>1,200</span>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <div class="col-1-4">
                         <div class="wrap-col">
                             <div class="wrap-vid">
                                 <div class="zoom-container">
                                     <a href="single.jsp">
                                                     <span class="zoom-caption">
                                                         <i class="icon-play fa fa-play"></i>
                                                     </span>
                                         <img src="images/3.jpg" />
                                     </a>
                                 </div>
                                 <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                 <div class="info">
                                     <h5>By <a href="#">Kelvin</a></h5>
                                     <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                     <span><i class="fa fa-heart"></i>1,200</span>
                                 </div>
                             </div>
                         </div>
                     </div>
                     <div class="col-1-4">
                         <div class="wrap-col">
                             <div class="wrap-vid">
                                 <div class="zoom-container">
                                     <a href="single.jsp">
                                                     <span class="zoom-caption">
                                                         <i class="icon-play fa fa-play"></i>
                                                     </span>
                                         <img src="images/4.jpg" />
                                     </a>
                                 </div>
                                 <h3 class="vid-name"><a href="#">Video's Name</a></h3>
                                 <div class="info">
                                     <h5>By <a href="#">Kelvin</a></h5>
                                     <span><i class="fa fa-calendar"></i>25/3/2015</span>
                                     <span><i class="fa fa-heart"></i>1,200</span>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>--%>

            <!-- 我的私信（邮箱）-->
            <h2><i class="fa fa-comment" style="color: palevioletred"></i>&nbsp;我的视频</h2>

            <div class="content">
                <table class="table table-responsive">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Content</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% int i;
                        for(i=0;i<movies.size();i++){
                    %>

                    <tr>

                        <td width="70%" class="td_white_blue" id="<%=i%>">
                             <% movies[i].id%>

                        </td>


                        <td width="70%" class="td_white_blue" id="<%=i%>">
                            <%=i %> : <%movies[i].name%>

                        </td>


                        <td width="70%" class="td_white_blue" id="<%=i%>">
                            <%=i %> : <%movies[i].content%>

                        </td>

                    </tr>
                    <%}%>
                    </tbody>
                </table>
                <button onclick="pre(<%=movie.size()%>)" >PREV</button>
                <button onclick="next(<%=movie.size()%>)" >NEXT</button>
            </div>
            <!-- 我的私信（好友列表-->
            <h2><i class="fa fa-user-md" style="color: palevioletred"></i>&nbsp;好友列表</h2>
            <div class="content">
                <table class="table table-responsive">
                    <tbody id="my-movies">
                    <%
                        for(i=0;i<3;i++){
                    %>

                    <tr>
                        <td width="10%" class="td_white">
                            <div class="user_face_icon">
                                <a href="userLetter.jsp">
                                    <img src="images/<%=i+10%>.jpg">
                                </a>
                            </div>
                        </td>
                        <td width="50%" class="td_white_blue">
                            <p><b>熊果</b></p>
                            <p>Signature:</p>
                        </td>

                    </tr>
                    <%}%>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script>
    var table = document.getElementById('my-movie');
    var currentRow = 3;
    var page = 1;
    function next(size){
        for(var i = currentRow * (page-1); i < 4 ; i ++){
            if(i > size) {
                break;
            }
            table.rows[i].style.display = '';
        }
        if(i < size) {
            page++;
        }
        for(var i = currentRow * (page); i < 4 ; i ++){
            if(i > size) {
                break;
            }
            table.rows[i].style.display = 'block';
        }

    }
    function pre(size){
        for(var i = currentRow * (page); i < 4 ; i ++){
            if(i > size) {
                break;
            }
            table.rows[i].style.display = '';
        }
        if(i < size) {
            page --;
        }
        for(var i = currentRow * (page); i < 4 ; i ++){
            if(i > size) {
                break;
            }
            table.rows[i].style.display = 'block';
        }
    }
</script>
</body>
</html>
