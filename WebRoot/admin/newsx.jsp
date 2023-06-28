<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<%-- <script src="js/pintuer.js"></script> --%>
</head>
<script charset="utf-8" src="/csglxt/kindeditor/kindeditor.js"></script>
<script charset="utf-8" src="/csglxt/kindeditor/lang/zh-CN.js"></script>
<script>
	        KindEditor.ready(function(K) {
	                window.editor = K.create('#editor_id');
	        });
	</script>
	<script>

KindEditor.ready(function(K) {

K.create('textarea[name="note"]', {

uploadJson : '/csglxt/kindeditor/jsp/upload_json.jsp',

                fileManagerJson : '/csglxt/kindeditor/jsp/file_manager_json.jsp',

                allowFileManager : true,

                allowImageUpload : true, 

autoHeightMode : true,

afterCreate : function() {this.loadPlugin('autoheight');},

afterBlur : function(){ this.sync(); }  //Kindeditor下获取文本框信息

});

});

</script>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>增加内容</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="updateNews.do"  enctype="multipart/form-data"> <!--  enctype="multipart/form-data" -->
      <div class="form-group">
        <div class="label">
          <label>标题：</label>
        </div>
        <div class="field">
          <input type="text" id="url1" name="name" class="input tips" value="${news.name}" readonly="readonly"/>
          <input type="hidden"  name="id"  value="${news.id }" />
        </div>
        </div>
        <div class="form-group">
         <div class="label">
          <label>首页图片：</label>
        </div>
        <div class="field">
        <img src="../upload/${news.img }" width="50" height="50">
          <div class="tipss"></div>
        </div>
        </div>
        <div class="form-group">
         <div class="label">
          <label>公告内容：</label>
        </div>
        <div class="field">
        ${news.note}
        </div>
          </div>
      <div class="form-group">
    <div class="field">
         <!--  <button class="button bg-main icon-check-square-o" type="submit"> 提交</button> -->
        </div>
        </div>
    </form>
  </div>
</div>

</body></html>