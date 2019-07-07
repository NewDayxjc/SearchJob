<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>帮帮网 — 注册用户</title>
<link href="../css/select2.css" rel="stylesheet"/>
<link rel="stylesheet" href="../css/style.css" />
<script type="text/javascript" src="../js/jquery-1.7.1.min.js"></script>

<script type="text/javascript" src="../js/search/area.js"></script>
<script type="text/javascript" src="../js/search/location.js"></script>
<script type="text/javascript" src="../js/search/select2.js"></script>
<script type="text/javascript" src="../js/search/select2_locale_zh-CN.js"></script>

<script type="text/javascript" src="../js/jquery.touchSlider.js"></script>
<script type="text/javascript" src="../js/js.js"></script>
<script type="text/javascript" src="../js/ks-switch.pack.js"></script>
<style type="text/css">
    .error{
        color: red;
    }
</style>

</head>

<body class="zc_bg">
<!-- top内容开始 -->
<div class="top">
	<div class="top_a">
    	<div class="top_a3">您好，欢迎来到！ <span style="font-size:14px; font-weight:bold; color:#424242">三门峡&nbsp;</span>[<input id="btn_nation" type="button" value="切换市区▼" onclick="nationSelect()" />]</div>
    	<div class="top_a1">
        	<div class="top_a2"><img src="../images/help.jpg" /></div>
            <div class="top_a2"><img src="../images/home.jpg" /></div>
            <div class="top_a2"><img src="../images/join.jpg" /></div>
        </div>
    </div>
    <div class="top_bg">
    	<div class="top_bga">
        	<div class="top_bga_1"></div>
            <div class="top_bga_2">
            	<ul>
                	<a href="bz.html"><li>帮 主</li></a>
                    <a href="bj.html"><li>帮 交</li></a>
                    <a href="bft.html"><li>帮分舵</li></a>
                    <a href="index.html"><li>帮 首</li></a>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- top内容结束 -->
<div class="center_blank"></div>
<!-- 公告和介绍开始  --><!-- 公告和介绍结束  -->
<!-- 内容开始 -->
<div class="nr">


    <div class="bzz">
    	<div class="center_gga">
			<div class="center_gga_1">&nbsp;免费注册</div>
		</div>
       <!-- <form action="insert" method="post">-->
        <form:form commandName="user" action="/insert" method="post">
        <div class="zc_a">
        	<div class="zc_left">
                <div class="item">
                    <label>用户姓名：</label>
                    <input type="text" name="userName"/>
                </div>
                <div class="item">
                    <label>用户账号：</label>
                    <input type="text" name="userAccount"/>
                </div>
                <div class="item">
                    <label>登录密码：</label>
                    <input type="text" name="userPwd"/>
                </div>
                <div class="item">
                    <label>确认密码：</label>
                    <input type="text" name="userAgain"/>
                </div>
                <div class="item">
                    <label>性 别：</label>
                    <input type="radio" name="userSex"/>男
                    <input type="radio" name="userSex">女
                </div>


       	  </div>
            <div class="zc_right">
                <div class="item">
                    <label>年龄：</label>
                    <input type="text" name="userAge"/>
                </div>
                <div class="item">
                    <label>学历：</label>
                    <input type="text" name="eduName"/>
                </div>
                <div class="item">
                    <label>联系电话：</label>
                    <form:input path="userPhone"/>
                    <form:errors path="userPhone" cssClass="error"/>


                </div>


                <div class="item">
                    <label>手机号码：</label>
                    <input type="text" />
                    <div class="item_a_2"></div><a href="#">发送验证码</a></span>
                </div>
              <div class="item_a">
   				<div class="item_a_1"><label>验&nbsp;证&nbsp;码：</label>
                    <div class="item_a_2"><input type="text" /></div>
                </div>


              </div>

              <div class="item_b">
              	<div class="item_b_1"></div>
              	<input type="checkbox" />&nbsp;<a href="#">我已阅读并同意《网站服务协议》</a>
              </div>
              <div  style="text-align: center">
              	
                  <input type="submit" value="注册" style="font-size: 30px;" >
              </div>


          </div>
        </div>
        </form:form>
      <!--  </form>-->
    </div>

    <!-- 友情链接开始 -->
    <div class="blank"></div>
    <div class="link">
    	<div class="link_a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;友情链接</div>
        <div class="link_b">
    		<ul>
        		<li><a href=""><img src="../images/link_pic.jpg" /></a></li>
            	<li><a href=""><img src="../images/link_pic2.jpg" /></a></li>
            	<li><a href=""><img src="../images/link_pic3.jpg" /></a></li>
                <li><a href=""><img src="../images/link_pic4.jpg" /></a></li>
            	<li><a href=""><img src="../images/link_pic.jpg" /></a></li>
                <li><a href=""><img src="../images/link_pic2.jpg" /></a></li>
                <li><a href=""><img src="../images/link_pic3.jpg" /></a></li>
        	</ul>
        </div>
    </div>
    <!-- 友情链接结束 -->
    
    <!-- 底部内容开始 -->
	<div class="blank"></div>
    <div class="blank"></div>
	<div class="button">
		<a href="">关于我们</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">商务合作</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">网站声明</a>&nbsp;&nbsp;|&nbsp;&nbsp;
        <a href="">联系方式</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">服务中心</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="">加入我们</a><br />
        版权所有©三门峡兼职网2014-2020  兼职网    豫88888888号 More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
	</div>
	<!-- 底部内容结束 -->
    
</div>
<!-- 内容结束 -->

<!-- alpha div -->
<div id="maskLayer" style="display:none;">
<iframe id="maskLayer_iframe" frameBorder=0 scrolling=no style="filter:alpha(opacity=50)"></iframe>
<div id="alphadiv" style="filter:alpha(opacity=50);-moz-opacity:0.5;opacity:0.5"></div>
	<div id="drag">
		<h3 id="drag_h"></h3>
		<div id="drag_con"></div><!-- drag_con end -->
	</div>
</div><!-- maskLayer end -->
</div>
<!-- alpha div end -->

</body>
</html>
