<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/resources/inc/taglib.jsp"%>
<div id="leftside">
	<div id="sidebar_s">
		<div class="collapse">
			<div class="toggleCollapse">
				<div></div>
			</div>
		</div>
	</div>
	<div id="sidebar">
		<div class="toggleCollapse">
			<h2>主菜单</h2>
			<div>收缩</div>
		</div>

		<div class="accordion" fillSpace="sidebar">
			<!-- 菜单标题 -->
			<div class="accordionHeader">
				<h2>
					<span>Folder</span>基础信息维护
				</h2>
			</div>
			<!-- 菜单内容 -->
			<div class="accordionContent">
				<ul class="tree">
					<li><a href="${path }/factoryInfo/list" target="navTab" rel="factoryInfo">厂家信息</a></li>
				</ul>
			</div>
			<!-- 菜单标题 -->
			<div class="accordionHeader">
				<h2>
					<span>Folder</span>原料信息维护
				</h2>
			</div>
			<!-- 菜单内容 -->
			<div class="accordionContent">
				<ul class="tree">
					<li><a href="${path }/zno/list" target="navTab" rel="zno">1氧化锌</a></li>
					<li><a href="${path }/bio/list" target="navTab" rel="bio">2三氧化二铋</a></li>
					<li><a href="${path }/cro/list" target="navTab" rel="cro">3三氧化二铬</a></li>
					<li><a href="${path }/nio/list" target="navTab" rel="nio">4三氧化二镍</a></li>
					<li><a href="${path }/sbo/list" target="navTab" rel="sbo">5三氧化二锑</a></li>
					<li><a href="${path }/sio/list" target="navTab" rel="sio">6二氧化硅</a></li>
					<li><a href="${path }/coo/list" target="navTab" rel="coo">7三氧化二钴</a></li>
					<li><a href="${path }/mno/list" target="navTab" rel="mno">8氧化锰</a></li>
					<li><a href="${path }/nio2/list" target="navTab" rel="nio2">9氧化亚镍</a></li>
					<li><a href="${path }/alno/list" target="navTab" rel="alno">10硝酸铝</a></li>
					<li><a href="${path }/alwire/list" target="navTab" rel="alwire">11铝丝</a></li>
					<li><a href="${path }/pva/list" target="navTab" rel="pva">12PVA</a></li>
					<li><a href="${path }/dispersant/list" target="navTab" rel="dispersant">13分散剂</a></li>
					<li><a href="${path }/defoamer/list" target="navTab" rel="defoamer">14消泡剂</a></li>
					<li><a href="${path }/glass/list" target="navTab" rel="glass">15玻璃粉</a></li>
					<li><a href="${path }/glaze/list" target="navTab" rel="glaze">16釉料</a></li>
					<li><a href="${path }/lube/list" target="navTab" rel="lube">17润滑油</a></li>
				</ul>
			</div>
			
			<!-- 菜单标题 -->
			<div class="accordionHeader">
				<h2>
					<span>Folder</span>加工过程管理
				</h2>
			</div>
			<!-- 菜单内容 -->
			<div class="accordionContent">
				<ul class="tree">
					<li><a href="${path }/additive/list" target="navTab" rel="additive">18添加剂配料数据统计</a></li>
					<li><a href="${path }/prilling/list" target="navTab" rel="prilling">19造粒料数据统计</a></li>
					<li><a href="${path }/forming/list" target="navTab" rel="forming">20成型数据统计</a></li>
					<li><a href="${path }/burn/list" target="navTab" rel="burn">21预烧片数据统计</a></li>
					<li><a href="${path }/coating/list" target="navTab" rel="coating">22涂布数据统计</a></li>
					<li><a href="${path }/highTempSintering/list" target="navTab" rel="highTempSintering">23高温烧结数据统计</a></li>
					<li><a href="${path }/primaryCleaning/list" target="navTab" rel="primaryCleaning">24一次清洗数据统计</a></li>
					<li><a href="${path }/primaryCoating/list" target="navTab" rel="primaryCoating">25一次涂覆数据统计</a></li>
					<li><a href="${path }/abrasive/list" target="navTab" rel="abrasive">26磨片数据统计</a></li>
					<li><a href="${path }/secondCleaning/list" target="navTab" rel="secondCleaning">27二次清洗</a></li>
					<li><a href="${path }/aluminising/list" target="navTab" rel="aluminising">28喷铝</a></li>
					<li><a href="${path }/secondCoating/list" target="navTab" rel="secondCoating">29二次涂覆</a></li>
					<li><a href="${path }/squareWave/list" target="navTab" rel="squareWave">30*2ms方波检测数据统计</a></li>
					<li><a href="${path }/lightningImpulse/list" target="navTab" rel="lightningImpulse">31雷电冲击数据检测</a></li>
					<li><a href="${path }/lightningPressure/list" target="navTab" rel="lightningPressure">32雷电残压测试</a></li>
	
					<li><a href="${path }/operatorPressure/list" target="navTab" rel="operatorPressure">33操作波测试</a></li>
					<li><a href="${path }/smallCurrentTest/list" target="navTab" rel="smallCurrentTest">34小电流测试数据统计表</a></li>
					<li><a href="${path }/finishedProduct/list" target="navTab" rel="finishedProduct">35成品数据统计</a></li>
					<li><a href="${path}/equipment/list" target="navTab" rel="equipment">36设备维修记录</a></li>
					<li><a href="${path }/instrument/list" target="navTab" rel="instrument">37测试仪表维修记录</a></li>
				</ul>
			</div>
			
			<!-- 菜单标题 -->
			<div class="accordionHeader">
				<h2>
					<span>Folder</span>电阻片查询
				</h2>
			</div>
			<!-- 菜单内容 -->
			<div class="accordionContent">
				<ul class="tree">
					<li><a href="${path }/forming/searchList" target="navTab" rel="searchList">电阻片查询</a></li>
					<%-- <li><a href="${path }/data/list" target="navTab" rel="data" width="830" height="500">工序分析</a></li>
					<li><a href="${path }/batchsData/data" target="navTab" rel="batchsData" width="830" height="500">批次分析</a></li> --%>
					<li><a href="${path }/weekReport/list" target="navTab" rel="weekReport">周报</a></li>
					<li><a href="${path }/monthReport/list" target="navTab" rel="monthReport">月报</a></li>
					<%-- <li><a href="${path }/finishedProduct/yearModelProportion" target="navTab" rel="yearModelProportion">年不同型号分析</a></li>
					<li><a href="${path }/finishedProduct/monthQualified" target="navTab" rel="monthQualified">月不同型号合格率</a></li>
					<li><a href="${path }/sameSpecification/differentQuarter" target="navTab" rel="sameSpecification">相同型号不同季度数据统计</a></li> --%>
					
					<li><a href="${path }/chartDisplay/yearQualified" target="navTab" rel="yearQualified">1.年度不同型号合格率</a></li>
					<li><a href="${path }/chartDisplay/monthQualified" target="navTab" rel="monthQualified">2.月度不同型号合格率</a></li>
					<li><a href="${path }/chartDisplay/difChipOutput" target="navTab" rel="difChipOutput">3.不同型号电阻表产量</a></li>
					<li><a href="${path }/chartDisplay/differentModelsProportion" target="navTab" rel="differentModelsProportion">4.不同型号电阻表产量占比</a></li>
					<li><a href="${path }/chartDisplay/differentModelsPassrate" target="navTab" rel="differentModelsPassrate">5.不同型号电阻表合格率</a></li>
					
					<li><a href="${path }/chartDisplay/singleModelQuarterPassrate" target="navTab" rel="singleModelQuarterPassrate">6.单型号电阻片季度合格率</a></li>
					<li><a href="${path }/chartDisplay/statistics7" target="navTab" rel="statistics7">7.单型号单窑烧结温度变化</a></li>
					<li><a href="${path }/chartDisplay/statistics8" target="navTab" rel="statistics8">8.单型号残压季度变化</a></li>
					<li><a href="${path }/chartDisplay/statistics9" target="navTab" rel="statistics9">9.单型号漏流季度变化</a></li>
					<li><a href="${path }/chartDisplay/statistics10" target="navTab" rel="statistics10">10.单型号电容季度变化</a></li>
					
					<li><a href="${path }/chartDisplay/statistics11" target="navTab" rel="statistics11">11.单批添加料合格率统计</a></li>
					<li><a href="${path }/chartDisplay/statistics12" target="navTab" rel="statistics12">12.单批添加料信息表</a></li>
					<li><a href="${path }/chartDisplay/statistics13" target="navTab" rel="statistics13">13.同日成型合格率</a></li>
					<li><a href="${path }/chartDisplay/statistics14" target="navTab" rel="statistics14">14.同日造粒信息表</a></li>
					<li><a href="${path }/chartDisplay/statistics15" target="navTab" rel="statistics15">15.同压机合格率</a></li>
					
					<li><a href="${path }/chartDisplay/statistics16" target="navTab" rel="statistics16">16.不同压机收缩率分析</a></li>
					<li><a href="${path }/chartDisplay/statistics17" target="navTab" rel="statistics17">17.高温区温度对收缩率影响</a></li>
					<li><a href="${path }/chartDisplay/statistics18" target="navTab" rel="statistics18">18.浆料粘度合格率
					 </a></li>
					<li><a href="${path }/chartDisplay/statistics19" target="navTab" rel="statistics19">19.含水率影响合格率</a></li>
					<li><a href="${path }/chartDisplay/statistics20" target="navTab" rel="statistics20">20.同批原材料信息</a></li>
					
					<li><a href="${path }/chartDisplay/statistics21" target="navTab" rel="statistics21">21.黑料粒度与电位梯度对比</a></li>
					<li><a href="${path }/chartDisplay/statistics22" target="navTab" rel="statistics22">22.原材料信息汇总表</a></li>
					<li><a href="${path }/chartDisplay/statistics23" target="navTab" rel="statistics23">23.主含量检验情况分析</a></li>
					<li><a href="${path }/chartDisplay/statistics24" target="navTab" rel="statistics24">24.粒度检验情况分析</a></li>
					<li><a href="${path }/chartDisplay/statistics25" target="navTab" rel="statistics25">25.电镜图片分析</a></li>
					
					<li><a href="${path }/chartDisplay/statistics26" target="navTab" rel="statistics26">26.人员检验统计</a></li>
					<li><a href="${path }/chartDisplay/statistics27" target="navTab" rel="statistics27">27.检验合格率</a></li>
					
				</ul>
			</div>
		</div>
	</div>
</div>