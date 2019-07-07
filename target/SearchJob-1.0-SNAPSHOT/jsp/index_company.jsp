<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="SearchJob.pojo.Company" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>帮帮网</title>
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

<body class="bs_bg">
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

<!-- 公告和介绍开始  -->
<div class="center_a">
	<div class="center_blank"></div>
	<div class="center_b">
    	<div class="center_gg">
        	<div class="center_gga">
            	<div class="center_gga_1"><a href="toInsert">发布招聘</a> </div>

                <div class="more"><a href="bft_more.jsp">更多>></a></div>
            </div>
            <div class="center_ggb">
            	<ul>
                    <c:forEach items="${employees}" var="emp" begin="0" end="7">
                        <li><a href="getMessageByEmployeeId?empId=${emp.empId}"><span>${emp.empDate}</span>${emp.empName}</a></li>
                    </c:forEach>

                </ul>
            </div>
    	</div>

        <div class="center_js">
        	<div class="center_gga">本帮介绍</div>
            <div class="banner">
            	<!--  banner图片开始 -->
                <div class="main_visual">
                	<div class="flicking_con">
                		<a href="#">1</a>
                		<a href="#">2</a>
                		<a href="#">3</a>
                		<a href="#">4</a>	
                	</div>
                	<div class="main_image">
                		<ul>
                			<a href="zzy.html"><li><span class="img_1"></span></li></a>
                			<a href="zzy.html"><li><span class="img_2"></span></li></a>
                			<a href="zzy.html"><li><span class="img_3"></span></li></a>
                			<a href="zzy.html"><li><span class="img_4"></span></li></a>
                		</ul>
                		<a href="javascript;" id="btn_prev"></a>
                		<a href="javascript;" id="btn_next"></a>
                	</div>
                </div>
                <!--  banner图片结束 -->
            </div>
         </div>
 
    </div>
</div>
<!-- 公告和介绍结束  -->
<!-- 内容开始 -->
<div class="nr">
	<div class="newPos">
    	<div class="newPos_a">最新职位</div>
        <div class="newPos_b">
        	<div class="newPos_b_img"><img src="images/pos_pic1.jpg" /></div>
            <div class="newPos_b_title"><p>培训类别：职业培训</p><p>培训费用：<span>￥1000元</span></p>  <p>培训时间：11月20日</p></div>
        </div>
        <div class="newPos_c">
        	<ul>
            	<a href="zzy.html"><li><span>11-6 08：24</span>· 家过年一赚点小一赚点</li></a>
                <a href="zzy.html"><li><span>11-6 08：24</span>· 家过年一赚点小一赚点</li></a>
                <a href="zzy.html"><li><span>11-6 08：24</span>· 家过年一赚点小一赚点</li></a>
            </ul>
        </div>
    </div>
    
    <div class="bang">
    	<!-- 标签切换开始 -->
        <div class="dengluh">尊敬的<span>[${company.compName}]用户</span></div>
        <div class="zhuce_dl">
                    	<div class="zhuce_name">
                        	<div class="zhuce_balnk"></div>
                            <div class="zhuce_balnk1"></div>
                            <div class="dengluh_1">欢迎回来！</div>
                            <div class="zhuce_balnk2"></div>
                            <div class="zhuce_nam"><a href="exitAll">退出</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="/companyModify?compId=${company.compId}">修改</a></div>
                        </div>
                    </div>
        <!-- 标签切换结束 -->
    </div>
    
    <div class="newPos">
    	<div class="newPos_a">最新职位</div>
        <div class="newPos_b">
        	<div class="newPos_b_img"><img src="images/pos_pic2.jpg" /></div>
            <div class="newPos_b_title"><p>培训类别：职业培训</p><p>培训费用：<span>￥1000元</span></p>  <p>培训时间：11月20日</p></div>
        </div>
        <div class="newPos_c">
        	<ul>
            	<a href="#"><li><span>11-6 08：24</span>· 家过年一赚点小一赚点</li></a>
                <a href="#"><li><span>11-6 08：24</span>· 家过年一赚点小一赚点</li></a>
                <a href="#"><li><span>11-6 08：24</span>· 家过年一赚点小一赚点</li></a>
            </ul>
        </div>
    </div>
    
    <!-- 搜索内容开始 -->
    <div class="blank"></div>
    <div class="search">
    	<div class="search_blank"></div>
        <div class="search_c"><input class="s_t" style="width:690px; height:17px; padding:8px; font-size:14px; color:#b8b8b8; letter-spacing:2px;" onblur="if(this.value==''){this.value='请输入职位名、公司名等关键词';this.style.color='#aaa'}" onfocus="if(this.value=='请输入职位名 公司名等关键字'){this.value='';this.style.color='#666'}" value="请输入职位名 公司名等关键字" name="keyword" /></div>
        <div class="search_btn"><a href="bft_more.html"><img src="images/search_btn.jpg" /></a></div>
    </div>
    <!-- 搜索内容结束 -->
    
    <!-- 帮众开始 -->
    <div class="blank"></div>
	<div class="bz">
    	<div class="center_gga" style="float:left">
        	<div class="center_gga_1">帮众类别</div>
            <div class="center_ggc"><a href="">杂工类</a><a href="">管道类</a><a href="">电工类</a><a href="">木工类</a></li><a href="">清洁、零工类</a>
            </div>
        </div>
        <div class="bz_a">
        	<div class="bz_a_1">杂工类</div>
            <div class="bz_a_2">
            	<ul>
                	<li><a href="bft_more.html">地板、面砖的铺设 </a></li>
                    <li><a href="bft_more.html">粉刷工</a></li>
                    <li><a href="bft_more.html">油漆工</a></li>
                </ul>
            </div>
        </div>
        <div class="bz_a">
        	<div class="bz_a_1">管道类</div>
            <div class="bz_a_2">
            	<ul>
                	<li><a href="bft_more.html">地暖的铺设</a></li>
                    <li><a href="bft_more.html">给、排水路的设计安装</a></li>
                    <li><a href="bft_more.html">城市供暖入户安装</a></li>
                </ul>
            </div>
        </div>
        <div class="bz_a">
        	<div class="bz_a_1">电工类</div>
            <div class="bz_a_2">
            	<ul>
                	<li><a href="bft_more.html">线路设计安装</a></li>
                    <li><a href="bft_more.html">开关、插座的安装</a></li>
                    <li><a href="bft_more.html">灯具的安装</a></li>
                    <li><a href="bft_more.html">电器的运送、安装 </a></li>
                </ul>
            </div>
        </div>
        <div class="bz_a">
        	<div class="bz_a_1">木工类</div>
            <div class="bz_a_2">
            	<ul>
                	<li><a href="bft_more.html">装修设计施工</a></li>
                    <li><a href="bft_more.html">附属装饰安装</a></li>
                    <li><a href="bft_more.html">各种门类安装</a></li>
                    <li><a href="bft_more.html">家具的运送、安装</a></li>
                </ul>
            </div>
        </div>
        <div class="bz_a" style="border:none">
        	<div class="bz_a_1">清洁、零工类</div>
            <div class="bz_a_2">
            	<ul>
                	<li><a href="bft_more.html">家居室内清洁</a></li>
                    <li><a href="bft_more.html">零工</a></li>
                </ul>
            </div>
        </div>
    </div>
	<!-- 帮众结束 -->
    
    <!-- 帮交开始 -->
    <div class="blank"></div>
	<div class="bz">
    	<div class="center_gga" style="float:left">
        	<div class="center_gga_1">帮交类别</div>
            <div class="center_ggc"><a href="">吃</a><a href="">穿</a><a href="">住</a><a href="">行</a></li><a href="">娱乐</a>
            </div>
        </div>
        <div class="bz_a">
        	<div class="bz_a_1">吃</div>
            <div class="bz_a_2">
            	<ul>
                	<li><a href="bft_more.html">火锅类</a></li>
                    <li><a href="bft_more.html">特色菜系</a></li>
                    <li><a href="bft_more.html">大众美食</a></li>
                    <li><a href="bft_more.html">帮主推荐</a></li>
                </ul>
            </div>
        </div>
        <div class="bz_a">
        	<div class="bz_a_1">穿</div>
            <div class="bz_a_2">
            	<ul>
                	<li><a href="bft_more.html">春装</a></li>
                    <li><a href="bft_more.html">夏装</a></li>
                    <li><a href="bft_more.html">秋装</a></li>
                    <li><a href="bft_more.html">冬装</a></li>
                </ul>
            </div>
        </div>
        <div class="bz_a">
        	<div class="bz_a_1">住</div>
            <div class="bz_a_2">
            	<ul>
                	<li><a href="bft_more.html">房屋</a></li>
                    <li><a href="bft_more.html">建材</a></li>
                </ul>
            </div>
        </div>
        <div class="bz_a">
        	<div class="bz_a_1">行</div>
            <div class="bz_a_2">
            	<ul>
                	<li><a href="bft_more.html">骑行</a></li>
                    <li><a href="bft_more.html">自驾</a></li>
                </ul>
            </div>
        </div>
        <div class="bz_a" style="border:none">
        	<div class="bz_a_1">娱乐</div>
            <div class="bz_a_2">
            	<ul>
                	<li><a href="bft_more.html">景点</a></li>
                    <li><a href="bft_more.html">嗨歌</a></li>
                    <li><a href="bft_more.html">运动</a></li>
                </ul>
            </div>
        </div>
    </div>
	<!-- 帮交结束 -->
    
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
