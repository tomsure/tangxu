<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>实名认证</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="../css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">
<link href="../css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="../css/table_public.css"/>
<script src="../vendor/jquery-3.1.1.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../vendor/bootstrap/bootstrap-table.min.js"></script>
<script src="../vendor/bootstrap/bootstrap-table-locale-all.min.js"></script>
<script src="../vendor/layer/layer.min.js" ></script>
</head>
 
<body class="page-body">
	 <div class="filter_content" >
	 	<form action="" method="post">
	 	   <div class="filter_content_top"  >
	 	   	<div class="usercode" >
	 	   		 <span id="">
	 	    	<span id="">
	 	    		ICCID/用户自编码
	 	    	</span><input type="text" name="" placeholder="查询ICCID/用户自编码" id="" value="" />	
	 	    </span>
	 	    
	 	   	</div>
	 	    <div class="CustomerName" style="margin-left: 180px;">
	 	    	<span id="">
	 	    	客户名称
	 	    </span>
	 	     <input type="text" class="filter_input" name="" id="" placeholder="查询客户名称" value="" />
	 	    </div>
	 	 <div class="RealName" style="margin-left:35px ;">
	 	 	 <span id="">
	 	  	实名名称
	 	  </span>
	 	  <input type="text" name="" class="filter_input" placeholder="查询真实名称" id="" value="" />
	 	 </div>
	 	 <div class="IdentificationNumber" style="margin-left: 20px;">
	 	 	 <span>证件号码</span>
	 	  <input type="text" name="" class="filter_input" placeholder="查询证件号码" id="" value="" />
	 	 </div>
	 	   <div class="form_btn" style="margin-left: 360px;">
	 	   	<button class="btn btn_reset" >重置</button>
	 	   	<button  class="btn btn_search">搜索</button>
	 	   </div>
	 	   </div>
	 	   
	 	  <div class="filter_content_bottom" >
	 	   	<div class="filter_left_btn">
	 	   	 
	 	   	 <button class="btn_step_authentication">新增</button>
	 	   	 <button class="btn_step_authentication">修改</button>
	 	   	 <button class="btn_step_authentication">批量删除</button>
	 	   	 
	 	   </div>
	 	   	 <div class="RealNameSource" >
	 	   	 	<span>实名来源:</span>
	 	   	 	<select name="" id="">
	 	   	 		<option value="">全部</option>
	 	   	 		<option value="">WEB</option>
	 	   	 		<option value="">公众号</option>
	 	   	 		<option value="">后台实名</option>
	 	   	 	</select>
	 	   	 </div>
	 	   	 <div class="sex_select" style="margin-left: 100px;" >
	 	   	 	<span>性别</span>
	 	   	 	<select name="">
	 	   	 	<option value="sex01">男</option>
	 	   	 	<option value="sex02">女</option>
	 	   	 	</select>
	 	   	 </div>
	 	   	 <div class="RealNameTime" style="margin-left: 120px;">
	 	   	   <span>
	 	   	     实名时间：
	 	   	   </span>
	 	   	 
	 	   	 	  <input type="date" class="filter_input" name="" id="" value="" /> -
	 	   	     <input type="date" class="filter_input" name="" id="" value="" />
	 	   	 
	 	   	 </div>
	 	   	 <div class="TransitTime" >
	 	   	 	<span>通过时间:</span>
	 	   	 	<input type="date" class="filter_input" name="" id="" value="" />
	 	   	 	<input type="date" class="filter_input" name="" id="" value="" />
	 	   	 </div>
	 	   </div> 
	 	  
	 	  
	 	</form>
	 </div>
	
    <h5 class="position-title">当前位置：首页>卡片管理>实名认证</h5>

       <!--contentBegin-->  
        <div id="content" >
       
               <table class="table table-bordered">
               	<thead>
  
               		<tr style="text-align: center;">
               			<th><input type="checkbox" name="" id="" value="" /></th>
               			<th>序号</th>
               			<th>用户自编码</th>
               			<th>ICCID</th>
               			<th>在线</th>
               			<th>归属地</th>
               			<th>运营商</th>
               			<th>卡片状态</th>
               			<th>流量套餐</th>
               			<th>套餐总量</th>
               			<th>已用流量</th>
               			<th>剩余流量</th>
               			<th>有效期</th>
               			<th>激活时间</th>
               			<th>发卡时间</th>
               			<th>限速（上）</th>
               			<th>限速（下）</th>
               			<th>限速规则</th>
               			<th>限速阈值</th>
               			<th>客户名称</th>
               			<th>卡片权限</th>
               			<th>操作</th>
               		</tr>
               	</thead>
               	<tbody>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>1</td>
               			<td>201712121212</td>
               			<td>546878975665465487</td>
               			<td>是</td>
               			<td>深圳市</td>
               			<td>联通卡</td>
               			<td style="color: #00CC00;">○已激活</td>
               			<td>32G/月</td>
               			<td>32G</td>
               			<td>16G</td>
               			<td>16G</td>
               			<td>2017/12/12</td>
               			<td>2017/11/11</td>
               			<td>2017/10/10</td>
               			<td>1000KB</td>
               			<td>0kb</td>
               			<td>10%限速</td>
               			<td>10%</td>
               			<td>深圳市优为尔科技有限公司</td>
               			<td>查看</td>
               			<td><a href="">矫正/编辑卡片/删除</a></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>2</td>
               			<td></td>
               			<td></td>
               			<td>否</td>
               			<td>东莞</td>
               			<td>移动</td>
               			<td style="color:#FF9900;">可激活</td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>3</td>
               			<td></td>
               			<td></td>
               			<td>否</td>
               			<td>广州市</td>
               			<td>电信卡</td>
               			<td style="color: #00CC00;">已激活</td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>4</td>
               			<td></td>
               			<td></td>
               			<td>否</td>
               			<td>广州市</td>
               			<td>电信卡</td>
               			<td style="color: #999999;">已停用</td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>5</td>
               			<td></td>
               			<td></td>
               			<td>否</td>
               			<td>广州市</td>
               			<td>电信卡</td>
               			<td style="color: red;">已失效</td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               		</tr>
               	</tbody>
               </table>
               
               <ul class="pagination" style="float: right;">
			    <li><a href="#">&laquo;</a></li>
			    <li class="active"><a href="#">1</a></li>
			    <li><a href="#">2</a></li>
			    <li><a href="#">3</a></li>
			    <li><a href="#">4</a></li>
			    <li><a href="#">5</a></li>
			    <li><a href="#">&raquo;</a></li>
			</ul>
        
          
       
		
		
			 </div>
			 <!--contentEnd-->
                   



</body>

</html>
