<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
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
          body{font-size:12px;}
          p,div{margin:0;padding:0}
          .textarea{
              width:350px;height:100px;position:absolute;background:none;z-index:9
          }
          .note{
              position:absolute;line-height:20px;padding:3px 5px;
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
			<div class="center_gga_1">&nbsp;发布信息</div>

		</div>
        <div class="zc_a">
            <div style="background: red">${message}</div>
            <form action="EmployeeInsert" method="post">
        	<div class="zc_left">
                <div class="item">
                    <label>招聘名称:</label>
                    <input type="text" name="empName"/>
                </div>
                <input type="hidden" name="compId" value="${company.compId}">
                <div class="item">
                    <label>职位名称：</label>
                    <input type="text" name="empJobName" />
                </div>
                <input type="hidden" name="compName" value="${company.compName}"/>
                <div class="item">
                    <label>招聘内容：</label>
                    <div style="position:relative;">
                        <textarea  name="empContent" style="border: black" class="textarea" onfocus="document.getElementById('note').style.display='none'" onblur="if(value=='')document.getElementById('note').style.display='block'"></textarea>
                        <div id="note" class="note">
                            <font color="#777">在这里写下招聘的具体信息</font>
                        </div>
                    </div>
                </div>

                <div style="height: 80px"></div>
                <div class="item">
                    <label>薪资：</label>
                    <input type="text" name="salary"/>
                </div>
                <div class="item">
                    <label>技能要求：</label>
                    <input type="text" name="techName" />
                </div>
                <div class="item">
                    <label>工作地点：</label>
                    <input type="text" name="empArea"/>
                </div>

       	  </div>
            <div class="zc_right">
                    <div class="item">
                        <label>联系电话：</label>
                        <input type="text" name="empPhone"/>
                    </div>
                <div class="item">
                    <label>联系人：</label>
                    <input type="text" name="empPeople"/>
                </div>
            	<div class="item">
    				<label>学历要求：</label>
   				  <input type="text" name="eduName"/>
 				</div>
                <div class="item">
    				<label>招聘人数：</label>
   				  <input type="text" name="empNumber"/>
 				</div>
                <div class="item">
    				<label>经验要求：</label>
   				  <input type="text" name="empExperience"/>
 				</div>
                    <div class="item">
                        <label>年龄要求：</label>
                        <input type="text" name="empAge"/>
                    </div>


          </div>
                <div  style="text-align: center">
                    <input type="submit" value="发布" style="font-size: 30px;" >
                </div>
            </form>
        </div>
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
