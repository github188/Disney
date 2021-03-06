<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="../include/_common_header.jsp"%>

</head>

<body >
	
	<div class="loc-search">
		<div class="loc-search-bg">
			<input placeholder="搜索景点" class="search-name" onchange="search();" >
			<i class="fa fa-search" onclick="search();" ></i> 
		</div>
	</div>
	
	<div class="loc-view-info" >
	
		<div class="lov-view-title">景点</div>
		
		<div class="loc-view-img" data-code="04-0008-0001">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/bifrost.jpg'/>">
			<div class="txt" >彩虹桥</div>
		</div>
		<div class="loc-view-img" data-code="04-0001-0001">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/disney.jpg'/>">
			<div class="txt" >迪士尼乐园入口</div>
		</div>
		<div class="loc-view-img" data-code="04-0004-0001">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/wishing-star1.jpg'/>">
			<div class="txt" >星愿公园西门出入口</div>
		</div>
		<div class="loc-view-img" data-code="04-0004-0002">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/wishing-star2.jpg'/>">
			<div class="txt" >星愿公园东门出入口</div>
		</div>
		<div class="loc-view-img" data-code="04-0003-0001">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/ecological.jpg'/>">
			<div class="txt" >生态园入口 </div>
		</div>
		<div class="loc-view-img" data-code="04-0002-0001">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/herb-garden1.jpg'/>">
			<div class="txt" >香草园北出入口</div>
		</div>
		<div class="loc-view-img" data-code="04-0002-0002">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/herb-garden2.jpg'/>">
			<div class="txt" >香草园南出入口</div>
		</div>
		
	</div>
	
	<div class="loc-view-info" >
		<div class="lov-view-title">酒店</div>
		<div class="loc-view-img" data-code="01-0001-0001">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/disney-hotel.jpg'/>">
			<div class="txt" >迪士尼乐园酒店入口</div>
		</div>
		<div class="loc-view-img" data-code="01-0002-0001">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/toystory-hotel.jpg'/>">
			<div class="txt" >玩具总动员酒店入口</div>
		</div>
	</div>
	
	<div class="loc-view-info" >
		<div class="lov-view-title">大型商业中心</div>
		<div class="loc-view-img" data-code="06-0002-0001">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/disney-town.jpg'/>">
			<div class="txt" >迪士尼小镇入口</div>
		</div>
		
		<div class="loc-view-img" data-code="05-0002-0001">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/maxus.jpg'/>">
			<div class="txt" >大通广场入口</div>
		</div>
	</div>
	
	
	<div class="loc-view-info" >
		<div class="lov-view-title">购物村</div>
		
		<div class="loc-view-img" data-code="05-0001-0001">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/shop1.jpg'/>">
			<div class="txt" >奕欧来购物村东南出入口</div>
		</div>
		
		<div class="loc-view-img" data-code="05-0001-0002">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/shop2.jpg'/>">
			<div class="txt" >奕欧来购物村西北出入口</div>
		</div>
		
		<div class="loc-view-img" data-code="05-0001-0003">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/shop3.jpg'/>">
			<div class="txt" >奕欧来购物村米莱门</div>
		</div>
	
		<div class="loc-view-img" data-code="05-0001-0004">
			<img alt="" src="<c:out value='${staticFileUrl }/resources/images/shop4.jpg'/>">
			<div class="txt" >奕欧来上海购物村戈什门</div>
		</div>
		
	</div>

	<script type="text/javascript">
		 $(".loc-view-img").on('click',function(){
		 	var code = $(this).data("code");
		 	
			var url = '/disney/pg/toLocation.html?toLocation='+code;
			window.location = url;
			
		});
		
		function search(){
		
			var condition = $('.search-name').val();
			
			$(".loc-view-info").each(function(){
				var show = false;
				
				$(this).find(".loc-view-img div.txt").each(function(){
				
					var txt = $(this).html();
				
					if(condition && condition != '' &&txt.indexOf(condition) == -1){
						$(this).parent().hide();
					}else{
						$(this).parent().show();
						show = true;
					}
				});
				
				if(show){
					$(this).show();
				}else{
					$(this).hide();
				}
				
			});
			
			
		}
		
	</script>

</body>

</html>
