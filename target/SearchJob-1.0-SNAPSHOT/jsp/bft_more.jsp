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
<title>帮帮网 — 精选事务</title>
<link href="css/select2.css" rel="stylesheet"/>
<link rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>

<script type="text/javascript" src="js/search/area.js"></script>
<script type="text/javascript" src="js/search/location.js"></script>
<script type="text/javascript" src="js/search/select2.js"></script>
<script type="text/javascript" src="js/search/select2_locale_zh-CN.js"></script>

<script type="text/javascript" src="js/jquery.touchSlider.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<script type="text/javascript" src="js/ks-switch.pack.js"></script>


</head>

<body class="bft_bg">
<!-- top内容开始 -->
<div class="top">
	<div class="top_a">
    	<div class="top_a3">您好，欢迎来到！ <span style="font-size:14px; font-weight:bold; color:#424242">三门峡&nbsp;</span>[<input id="btn_nation" type="button" value="切换市区▼" onclick="nationSelect()" />]</div>
    	<div class="top_a1">
        	<div class="top_a2"><img src="images/help.jpg" /></div>
            <div class="top_a2"><img src="images/home.jpg" /></div>
            <div class="top_a2"><img src="images/join.jpg" /></div>
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
<!-- 内容开始 -->
<div class="nr">  
          <div class="bft_f">
          	<div class="bft_f_1">
            	<ul>
                	<li>区域</li>
                    <li>内容</li>
                    <li>报 酬</li>
                    <li>技能要求</li>
                    <li></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>三门峡市区</span></li>
                    <li>高薪招聘广告业务员</li>
                    <li>200元/天</li>
                    <li>熟练操作电脑，熟悉网络</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>灵宝市区</span></li>
                    <li>移动互联网销售代表</li>
                    <li>40元/小时</li>
                    <li>安装机柜内网络配线架和110配线架</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>西站</span></li>
                    <li>八达企业管理顾问有限公司招聘业务员</li>
                    <li>150元/天</li>
                    <li>安装电话和网络模块</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>卢氏</span></li>
                    <li>弱电工人</li>
                    <li>120元/天</li>
                    <li>新装修办公楼内桥架管内敷设线路</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>渑池</span></li>
                    <li>电脑维修工程师电脑技术员</li>
                    <li>200元/天</li>
                    <li>熟练操作电脑，熟悉网络</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>义马</span></li>
                    <li>兼职专业苹果电脑系统维护</li>
                    <li>50/小时</li>
                    <li>安装机柜内网络配线架和110配线架</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>三门峡市区</span></li>
                    <li>高薪招聘广告业务员</li>
                    <li>200元/天</li>
                    <li>熟练操作电脑，熟悉网络</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>灵宝市区</span></li>
                    <li>移动互联网销售代表</li>
                    <li>40元/小时</li>
                    <li>安装机柜内网络配线架和110配线架</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>西站</span></li>
                    <li>八达企业管理顾问有限公司招聘业务员</li>
                    <li>150元/天</li>
                    <li>安装电话和网络模块</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>卢氏</span></li>
                    <li>弱电工人</li>
                    <li>120元/天</li>
                    <li>新装修办公楼内桥架管内敷设线路</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>渑池</span></li>
                    <li>电脑维修工程师电脑技术员</li>
                    <li>200元/天</li>
                    <li>熟练操作电脑，熟悉网络</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>义马</span></li>
                    <li>兼职专业苹果电脑系统维护</li>
                    <li>50/小时</li>
                    <li>安装机柜内网络配线架和110配线架</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
             <div class="bft_f_2">
            	<ul>
                	<li><span>三门峡市区</span></li>
                    <li>高薪招聘广告业务员</li>
                    <li>200元/天</li>
                    <li>熟练操作电脑，熟悉网络</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>灵宝市区</span></li>
                    <li>移动互联网销售代表</li>
                    <li>40元/小时</li>
                    <li>安装机柜内网络配线架和110配线架</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>西站</span></li>
                    <li>八达企业管理顾问有限公司招聘业务员</li>
                    <li>150元/天</li>
                    <li>安装电话和网络模块</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>卢氏</span></li>
                    <li>弱电工人</li>
                    <li>120元/天</li>
                    <li>新装修办公楼内桥架管内敷设线路</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>渑池</span></li>
                    <li>电脑维修工程师电脑技术员</li>
                    <li>200元/天</li>
                    <li>熟练操作电脑，熟悉网络</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_2">
            	<ul>
                	<li><span>义马</span></li>
                    <li>兼职专业苹果电脑系统维护</li>
                    <li>50/小时</li>
                    <li>安装机柜内网络配线架和110配线架</li>
                    <li><a href="zzy.html"><img src="images/shenqing.jpg" /></a></li>
                </ul>
            </div>
            <div class="bft_f_3">
            	<ul>
                	<li>第<span>3</span>页</li>
                    <li><a href="#">首页</a></li>
                    <li><a href="#">上一页</a> </li>
                    <li><a href="#">下一页</a> </li>
                    <li><a href="#">尾页</a></li>
                    <li><a href="#">共5页</a></li>
                </ul>
            </div>
          </div>
          <!--   -->
           

          <!-- 友情链接开始 -->
          <div class="blank"></div>
    <div class="link">
    	<div class="link_a">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;友情链接</div>
        <div class="link_b">
    		<ul>
        		<li><a href=""><img src="images/link_pic.jpg" /></a></li>
            	<li><a href=""><img src="images/link_pic2.jpg" /></a></li>
            	<li><a href=""><img src="images/link_pic3.jpg" /></a></li>
                <li><a href=""><img src="images/link_pic4.jpg" /></a></li>
            	<li><a href=""><img src="images/link_pic.jpg" /></a></li>
                <li><a href=""><img src="images/link_pic2.jpg" /></a></li>
                <li><a href=""><img src="images/link_pic3.jpg" /></a></li>
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
        <div class="submenu"></div>
    	<!-- 搜索内容结束 -->
        
    </div>
	<!-- 帮众结束 -->
    
    
   
   
    
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
