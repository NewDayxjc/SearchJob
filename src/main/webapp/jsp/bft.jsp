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
<title>帮帮网 — 帮分舵</title>
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

<!-- 公告和介绍开始  -->
<div class="bfd_a">
	<div class="center_blank"></div>
	<div class="center_b">
    	<div class="bfd_a_2">
        	<div class="bft_b">
            	<div class="bft_b_1"><img src="images/pic_dt.jpg" /></div>
                <div class="bft_b_2">所在地 ：<span>灵宝市</span></div>
                <div class="bft_b_3">晴</div>
                <div class="bft_b_4"><span>12 ~ 21℃</span></div>
                <div class="bft_b_4"><span>3-4</span>级转微风</div>
            </div>
            <div class="bfd_a_1">
            	<img src="images/map.jpg" width="625" height="219" />
            </div>
    	</div>
        
        <div class="bfd_js">
            <div class="bfd_banner">
            	<!--  banner图片开始 -->
                <div class="main_visual_a">
                	<div class="flicking_con_a">
                		<a href="#">1</a>
                		<a href="#">2</a>
                		<a href="#">3</a>
                		<a href="#">4</a>	
                        <a href="#">5</a>
                	</div>
                	<div class="main_image_a">
                		<ul>
                			<a href="#"><li><span class="img_5"></span></li></a>
                			<a href="#"><li><span class="img_6"></span></li></a>
                			<a href="#"><li><span class="img_7"></span></li></a>
                			<a href="#"><li><span class="img_8"></span></li></a>
                            <a href="#"><li><span class="img_9"></span></li></a>
                		</ul>

                	</div>
                </div>
                <!--  banner图片结束 -->
            </div>
         </div>
 
    </div>
</div>
<!-- 公告和介绍结束  -->

<!--  事务公告 -->
<div class="bft_swgg">
    <div class="center_gga">
    	<div class="center_gga_1">事务公告</div>
    	<div class="more"><a href="bft_more.html">更多>></a></div>
    </div>
    <div class="bft_gg">
		<ul>
			<li><a href="zzy.html"><span>11-6 08：24</span>职前台接待及前台接待及活活动支活动活活动支活动</a></li>
			<li><a href="zzy.html"><span>11-6 08：24</span>聘兼职营业员前营业员前台接待及活动宝山万达</a></li>
			<li><a href="zzy.html"><span>11-6 08：24</span>业余网拍前台接待及活模拍前台接待及活模特幕结200-600</a></li>
            <li><a href="zzy.html"><span>11-6 08：24</span>薪500急聘打字员,前台接待及资资日结前台接待</a></li>
            <li><a href="zzy.html"><span>11-6 08：24</span>时尚精品服前台接接待及待及动饰模特待及待饰模特</a></li>
            <li><a href="zzy.html"><span>11-6 08：24</span>直前台接待及待及待及动饰模特活兼动招兼职模特</a></li>
            <li><a href="zzy.html"><span>11-6 08：24</span>规淘宝网拍模正规淘宝特杂志模特直招待及待及动饰模特</a></li>
            <li><a href="zzy.html"><span>11-6 08：24</span>时尚精品服前台接接待及待及动饰模特待及待饰模特</a></li>
            <li><a href="zzy.html"><span>11-6 08：24</span>直前台接待及待及待及动饰模特活兼动招兼职模特</a></li>
            <li><a href="zzy.html"><span>11-6 08：24</span>规淘宝网拍模正规淘宝特杂志模特直招待及待及动饰模特</a></li>
            <li><a href="zzy.html"><span>11-6 08：24</span>职前待及待及动饰模特待及饰模接待及前台接待及活活动支活动</a></li>
		</ul>
     </div>
</div>
<!--  事务公告结束 -->


<!-- 内容开始 -->
<div class="nr">
    <!-- 帮众开始 -->
    <div class="blank"></div>
	<div class="bfs_search">
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
        <!-- 搜索内容开始 -->
    	<div class="bfs_search1">
    		<div class="bfs_search_blank"></div>
    		<ul id="accordion" class="accordion">
				<li>
               	  	<div class="bfs_search_a"><input class="s_t" style="width:643px; height:17px; padding:10px; font-size:14px; color:#b8b8b8; letter-spacing:2px;" onblur="if(this.value==''){this.value='请输入职位名、公司名等关键词';this.style.color='#aaa'}" onfocus="if(this.value=='请输入职位名 公司名等关键字'){this.value='';this.style.color='#666'}" value="请输入职位名 公司名等关键字" name="keyword" /></div>
					<A href="bft_more.html"><div class="linka"></div></A>
                    <div class="linkb"></div>
                    <!-- 展开 --> 
					<ul class="submenu">
                  		
        				<div class="bft_e">
                        	
                            <div class='diy_select'>
							<input type='hidden' name='' class='diy_select_input'/>
							<div class='diy_select_txt'>地区</div>
							<div class='diy_select_btn'></div>
								<ul class='diy_select_list'>
                                	<li>灵宝市</li>
									<li>陕县</li>
									<li>渑池县</li>
									<li>卢氏县</li>
									<li>义马市</li>
                                    <li>湖滨区</li>
								</ul>
							</div>
                            
                            <div class='diy_select'>
							<input type='hidden' name='' class='diy_select_input'/>
							<div class='diy_select_txt'>行业</div>
							<div class='diy_select_btn'></div>
								<ul class='diy_select_list'>
									<li>销售</li>
									<li>技工</li>
									<li>服务</li>
									<li>会计</li>
									<li>物业管理</li>
								</ul>
							</div>
                            
                            <div class='diy_select'>
							<input type='hidden' name='' class='diy_select_input'/>
							<div class='diy_select_txt'>职位</div>
							<div class='diy_select_btn'></div>
								<ul class='diy_select_list'>
									<li>电话销售</li>
									<li>餐厅经理</li>
									<li>钟点服务员</li>
								</ul>
							</div>
                            
                            <div class='diy_select'>
							<input type='hidden' name='' class='diy_select_input'/>
							<div class='diy_select_txt'>工资范围</div>
							<div class='diy_select_btn'></div>
								<ul class='diy_select_list'>
									<li>10-30元/小时</li>
									<li>150元/天</li>
								</ul>
							</div>
                            
                            <div class='diy_select'>
							<input type='hidden' name='' class='diy_select_input'/>
							<div class='diy_select_txt'>工作时长</div>
							<div class='diy_select_btn'></div>
								<ul class='diy_select_list'>
									<li>1小时</li>
									<li>8小时</li>
									<li>24小时</li>
									<li>一周</li>
									<li>一个月</li>
								</ul>
							</div>
                            
                            <div class='diy_select'>
							<input type='hidden' name='' class='diy_select_input'/>
							<div class='diy_select_txt'>工作时间</div>
							<div class='diy_select_btn'></div>
								<ul class='diy_select_list'>
									<li>周六周日</li>
									<li>18:00以后</li>
									<li>周五晚上</li>
								</ul>
							</div>
                        </div>
					</ul>
                    <!-- 展开结束 --> 
				</li>
			</ul>
            
<script type="text/javascript">
function diy_select(){this.init.apply(this,arguments)};
diy_select.prototype={
	 init:function(opt)
	 {
		this.setOpts(opt);
		this.o=this.getByClass(this.opt.TTContainer,document,'div');//容器
		this.b=this.getByClass(this.opt.TTDiy_select_btn);//按钮
		this.t=this.getByClass(this.opt.TTDiy_select_txt);//显示
		this.l=this.getByClass(this.opt.TTDiv_select_list);//列表容器
		this.ipt=this.getByClass(this.opt.TTDiy_select_input);//列表容器
		this.lengths=this.o.length;
		this.showSelect();
	 },
	 addClass:function(o,s)//添加class
	 {
		o.className = o.className ? o.className+' '+s:s;
	 },
	 removeClass:function(o,st)//删除class
	 {
		var reg=new RegExp('\\b'+st+'\\b');
		o.className=o.className ? o.className.replace(reg,''):'';
	 },
	 addEvent:function(o,t,fn)//注册事件
	 {
		return o.addEventListener ? o.addEventListener(t,fn,false):o.attachEvent('on'+t,fn);
	 },
	 showSelect:function()//显示下拉框列表
	 {
		var This=this;
		var iNow=0;
		this.addEvent(document,'click',function(){
			 for(var i=0;i<This.lengths;i++)
			 {
				This.l[i].style.display='none';
			 }
		})
		for(var i=0;i<this.lengths;i++)
		{
			this.l[i].index=this.b[i].index=this.t[i].index=i;
			this.t[i].onclick=this.b[i].onclick=function(ev)  
			{
				var e=window.event || ev;
				var index=this.index;
				This.item=This.l[index].getElementsByTagName('li');

				This.l[index].style.display= This.l[index].style.display=='block' ? 'none' :'block';
				for(var j=0;j<This.lengths;j++)
				{
					if(j!=index)
					{
						This.l[j].style.display='none';
					}
				}
				This.addClick(This.item);
				e.stopPropagation ? e.stopPropagation() : (e.cancelBubble=true); //阻止冒泡
			}
		}
	 },
	 addClick:function(o)//点击回调函数
	 {

		if(o.length>0)
		{
			var This=this;
			for(var i=0;i<o.length;i++)
			{
				o[i].onmouseover=function()
				{
					This.addClass(this,This.opt.TTFcous);
				}
				o[i].onmouseout=function()
				{
					This.removeClass(this,This.opt.TTFcous);
				}
				o[i].onclick=function()
				{
					var index=this.parentNode.index;//获得列表
					This.t[index].innerHTML=This.ipt[index].value=this.innerHTML.replace(/^\s+/,'').replace(/\s+&/,'');
					This.l[index].style.display='none';
				}
			}
		}
	 },
	 getByClass:function(s,p,t)//使用class获取元素
	 {
		var reg=new RegExp('\\b'+s+'\\b');
		var aResult=[];
		var aElement=(p||document).getElementsByTagName(t || '*');

		for(var i=0;i<aElement.length;i++)
		{
			if(reg.test(aElement[i].className))
			{
				aResult.push(aElement[i])
			}
		}
		return aResult;
	 },

	 setOpts:function(opt) //以下参数可以不设置  //设置参数
	 { 
		this.opt={
			 TTContainer:'diy_select',//控件的class
			 TTDiy_select_input:'diy_select_input',//用于提交表单的class
			 TTDiy_select_txt:'diy_select_txt',//diy_select用于显示当前选中内容的容器class
			 TTDiy_select_btn:'diy_select_btn',//diy_select的打开按钮
			 TTDiv_select_list:'diy_select_list',//要显示的下拉框内容列表class
			 TTFcous:'focus'//得到焦点时的class
		}
		for(var a in opt)  //赋值 ,请保持正确,没有准确判断的
		{
			this.opt[a]=opt[a] ? opt[a]:this.opt[a];
		}
	 }
}


var TTDiy_select=new diy_select({  //参数可选
	TTContainer:'diy_select',//控件的class
	TTDiy_select_input:'diy_select_input',//用于提交表单的class
	TTDiy_select_txt:'diy_select_txt',//diy_select用于显示当前选中内容的容器class
	TTDiy_select_btn:'diy_select_btn',//diy_select的打开按钮
	TTDiv_select_list:'diy_select_list',//要显示的下拉框内容列表class
	TTFcous:'focus'//得到焦点时的class
});//如同时使用多个时请保持各class一致.
</script>

          <!--   -->
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
