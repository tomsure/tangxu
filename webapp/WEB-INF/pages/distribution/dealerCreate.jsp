<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>分销管理-大区域经销商创建</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/homeAbout/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="vendor/layui/layui.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</head>
 
<body class="page-body">
	 
        <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：分销管理&gt;大区域经销商创建
        </h5>
       <div class="search-box">
	   <form>
	        <div>
                <span>大区域编号：</span>
                <input id="regionNum" type="text" class="form-control" placeholder="查询大区域编号">
            </div>
            <div>
                <span>大区域经销商：</span>
                <input id="dealer" type="text" class="form-control" placeholder="查询证件号码">
            </div>
            <div>
                <span>分润规则：</span>
                <input id="shareRule" type="text" class="form-control" placeholder="查询iccid">
            </div>
            <div>
                <span>联系人：</span>
                <input id="linkMan" type="text" class="form-control" placeholder="查询收件人电话">
            </div>
            <div>
                <span>联系人电话：</span>
                <input id="linkPhone" type="text" class="form-control" placeholder="查询快递单号">
            </div>
            <div>
                <span>行业分类：</span>
                <input id="industryClassify" type="text" class="form-control" placeholder="查询新卡号">
            </div>
             <div class="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;"/>
             <input id="search" data-type="reload" type="button" class="btn btn_search" value="搜索" style="height:34px;margin-left: 30px;">
             </div>
       </form>
  		</div>
  		<div class="check-btn">
        	<button class="btn btn-default" id="addDealerCreate">新增</button>
           	<button id="btn_del" class="btn btn-default">删除</button>
        </div>
       <!--contentBegin-->
        <div id="content" >
        	<div class="">
       			<table class="table-hide" id="dealerCreate" lay-data="{id: 'idDealerCreate'}" lay-filter="DealerCreate"></table>
            </div>
        </div>
			  <!--新增弹窗开始-->
   	   <div class="addDealerModal" id="addDealerCreateBox">
   	   	  <form class="" action="" id="form1">
   	   	  <p style="margin-left: 0;"><span class="" >账号:</span><input type="text" name=""/></p>
   	   	  <p><span class=" addtitle1">密码:</span><input type="text" placeholder="收件人" name="name"/></p>
   	   	  <p><span class="" style="margin-right: 30px;">大区域编号</span><input type="text" placeholder="输入收件人电话" name="recipientPhone"/></p>
   	   	  <p><span class="" style="margin-right: 30px;">经销商名称</span><input type="text" placeholder="输入收件人地址" name="address"/></p>
   	   	  
   	   	  <!-- 未完.待续.. -->
   	   	  </form>
   	       <div id="applyBtn" class="modal_btn">
   	   	    	<button class="btn btn_ok">确定</button>
   	   	    	<button class="btn btn_cancel ">取消</button>
   	   	    	<button class="btn btn_reset">重置</button>
   	   	    </div>	   
   	   </div>
</body>

<script type="text/html" id="titleTpl1">
  {{#  if(d.status===1){ }}
		待补卡
  {{#  } else if(d.status===2){ }}
       	已补卡
  {{#  } }}
</script>
<script type="text/javascript">
$(function(){
	//新增按钮.
	$("#applyBtn").on('click',".btn_ok",function(){
		var url="addReissueApply";
		var param=$("#form1").serialize();
		$.post(url,param,function(result){
			if(result.code==0){
				layer.msg("新增成功");
				window.location.reload();
			}else{
				layer.msg(result.msg);
			}
		});
	}); 
		//加载数据
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#dealerCreate',
				url:'getDealerCreateList',
				id: 'idDealerCreate',
				cellMinWidth:120,
				page:true,
				cols:[[
					 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
				     {title:'序号',templet: '#indexTpl',width:80}
				      ,{field:'regionNum', width:120, title: '大区域编号', sort: true,edit:'text',templet: '#titleTpl1'}
				      ,{field:'dealer', width:120, title: '大区域经销商'}
				      ,{field:'account', width:120, title: '账号', sort: true,edit:'text'}
				      ,{field:'shareRule', width:120, title: '分润规则', sort: true,edit:'text'}
				      ,{field:'shareValue', width:120, title: '分润值', sort: true,edit:'text'}
				      ,{field:'linkMan', width:120, title: '联系人', sort: true,edit:'text'}
				      ,{field:'linkPhone', width:120, title: '联系电话', sort: true,edit:'text'}
				      ,{field:'industryClassify', width:120, title: '行业分类', sort: true,edit:'text'}
				      ,{field:'businessLicense', width:120, title: '营业执照', sort: true,edit:'text'}
				      ,{field:'QR', width:120, title: '二维码', sort: true,edit:'text'}
	 			      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
					]],
				})
	 		    var $ = layui.$, active = {
			        reload: function(){
			            table.reload('idDealerCreate', {
			                where: {
			                	regionNum: $('#regionNum').val(),
			                	dealer: $('#dealer').val(),
			                	shareRule: $('#shareRule').val(),
			                	linkMan: $('#linkMan').val(),
			                	linkPhone: $('#linkPhone').val(),
			                	industryClassify: $('#industryClassify').val()
			                }
			            });
			        }
			    };
			//监听搜索查询
			$('#search').on('click', function(){
			    var type = $(this).data('type');
			    active[type] ? active[type].call(this) : '';
			});
			
			//监听批量删除按钮
			$('#btn_del').on('click', function(){
			      layer.confirm('确认是否删除', function(index){
			    	  layer.close(index);
				var checkStatus = table.checkStatus('idDealerCreate'); //test即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "delDealerCreateById",
				   		async:false,
				   	 	data: param,
				   	 	success: function(data){
				     	  }
				     });
				    //表格重载
				    tableIns.reload({
				    	  page: {
				    	    curr: 1 //重新从第 1 页开始
				    	  }
				    	});
				}else{
					layer.msg("请选择至少一条数据");
				}
			});
			  });
			
			//监听单元格编辑
			  table.on('edit(DealerCreate)', function(obj){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "editDealerCreate",
			   		async:false,
			   	 	data: "value="+value+"&field="+field+"&id="+data.id,
			   	 	success: function(data){
			     	  },error:function(date){
			     		 layer.msg("失败");
			     	  }
			     });
			  //表格重载
			    tableIns.reload({
			    	  page: {
			    	    curr: 1 //重新从第 1 页开始
			    	  }
			    	});
			  });
			  
			//监听工具条
			  table.on('tool(DealerCreate)', function(obj){
			    var data = obj.data;
			    var checkStatus = table.checkStatus('idDealerCreate');
			    console.log(checkStatus.data);
			    if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							var chk_value=[data.id];
							 var param = {"titles":chk_value}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "delDealerCreateById",
						   	 	data: param,
						   	 	success: function(data){
						     	  }
						     });
			        obj.del();
			        layer.close(index);
			      });
			    }
			  });
			
		});
	})
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<script type="text/html" id="barTools">
<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
</html>
