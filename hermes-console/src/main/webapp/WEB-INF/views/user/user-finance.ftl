<div class="panel">
	<div class="panel-body">
	<div class="top">
		<div class="row">
			<div class="col-md-6">
				<input type="hidden" id="id" name="id" value="${id}"/>
				<p><img class="headimg" src="${app.img}/acdount_head_img02.png" style="height:50px;" /></i></p>
			</div>
 			 <div class="col-md-6">
		 		 <div class="btn-toolbar pull-right clearfix" role="toolbar">
					<div id="freeBtn" class="btn-group">
					  <button type="button" id="freeze" class="btn btn-primary" data-auth="${user.status}"><@messages key="common.op.freeze"/></button>
					  <button type="button" id="unfreeze" class="btn btn-primary" data-auth="${user.status}"><@messages key="common.op.unfreeze"/></button>
					</div>
					<div class="btn-group">
						 <button id="signOut"  type="button" class="btn btn-primary">注销</button>
					</div>
				</div>
 			 </div>
		</div>
	</div>
		  <div>
			<!--Nav Tabs-->
			<ul  id="navTab" class="nav nav-tabs">
				<li><a href="#basic" data-toggle="tab"><@messages key="user.basic.info"/></a></li>
				<li><a href="#account" data-toggle="tab"><@messages key="user.account.info"/></a></li>
				<li><a href="#invest" data-toggle="tab"><@messages key="user.invest.record"/></a></li>
			</ul>
			<!-- Tab panes -->
			<div class="tab-content" id="tabContent">
			  <div class="tab-pane active" id="basic"><div id="finance-basic" ></div></div>
			  <div class="tab-pane" id="account"><div id="finance-account" ></div></div>
			  <div class="tab-pane" id="invest"><div id="finance-invest" ></div></div>
			</div>
		  </div>
 	</div>
</div>
<script type="text/javascript" charset="utf-8">
<!--
jQuery(function($) {
	$("#freeBtn").find('button').each(function() {
		if ($(this).data().auth == '01'||$(this).data().auth == '99') $(this).addClass('disabled');
	});
 	$('#navTab a:first').tab('show') // Select first tab
 	$("#navTab").find('li').click(function(){
 		var index = $(this).index();
 		if(index==1){
 			init("${app}/user/loadAccount/","tabContent");
 		}else if(index==2){
 			init("${app}/user/loadInvestRecord/","tabContent");
 		}else{
 			init("${app}/user/loadBasic/"+'finance'+"/","tabContent");
 		}
 	});
 	init("${app}/user/loadBasic/"+'finance'+"/","tabContent");
 	$("#signOut").on("click",function(){
 		var id=$("#id").val();
 		$.ajax({
		        url: "${app}/user/logOffUser/"+id,
			    type: "POST",
			    dataType: 'json',
		        success: function(data) {
		        	if(data.type=="SUCCESS"){
		        		init("${app}/user/loadBasic/finance/","tabContent");
		        	}else{
		        		alert(data.firstMessage);
		        	}
		        }
		    });
 	});
 	$("#freeze").on("click",function(){
 			var id=$("#id").val();
 		$.ajax({
		        url: "${app}/user/freezeUser/"+id,
			    type: "POST",
			    dataType: 'json',
		        success: function(data) {
		        	init("${app}/user/loadBasic/finance/","tabContent");
		        }
		    });
 	});
 	$("#unfreeze").on("click",function(){
 			var id=$("#id").val();
 		$.ajax({
		        url: "${app}/user/unfreezeUser/"+id,
			    type: "POST",
			    dataType: 'json',
		        success: function(data) {
		        	init("${app}/user/loadBasic/finance/","tabContent");
		        }
		    });
 	});
});
function init(_url,_content){
	var id=$("#id").val();
		$.ajax({
		     url: _url+id,
		     success:function(data) {
		       $("#"+_content).html(data) // 内容装入div中
			 }
	   })
}
//-->
</script>