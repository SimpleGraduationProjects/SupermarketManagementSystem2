// 导航栏配置文件
var outlookbar=new outlook();
var t;

t=outlookbar.addtitle('活动管理','活动管理',1)
outlookbar.addcsglxt('抽奖活动设置',t,'addmarnavs.jsp')
outlookbar.addcsglxt('抽奖活动维护',t,'marnavs.jsp')
outlookbar.addcsglxt('用户抽奖情况',t,'../pages/cyyhtj.jsp')

t=outlookbar.addtitle('系统管理','系统管理',1)
outlookbar.addcsglxt('添加管理员',t,'addsysusers.jsp')
outlookbar.addcsglxt('管理员维护',t,'sysusers.jsp')
outlookbar.addcsglxt('系统角色维护',t,'uroles.jsp')
outlookbar.addcsglxt('系统信息管理',t,'notices.jsp')

	


t=outlookbar.addtitle('反馈收集','反馈收集',1)
outlookbar.addcsglxt('教材反馈',t,'../feedBack/bookListDiscuss.html')
outlookbar.addcsglxt('反馈设置',t,'../feedBack/discussUser.html')
outlookbar.addcsglxt('反馈统计',t,'../feedBack/bookListDetails.html')	

t=outlookbar.addtitle('教材选用','教材选用',1)
outlookbar.addcsglxt('教材选用情况填写',t,'../bookSelect/bookSelectInsert.html')
outlookbar.addcsglxt('教材选用情况统计',t,'../bookSelect/bookSelectCount.html')
outlookbar.addcsglxt('教材选用情况对比',t,'../bookSelect/bookSelectCompare.html')
outlookbar.addcsglxt('教材选用情况查询',t,'../bookSelect/bookSelectQuery.html')
//outlookbar.addcsglxt('教材委员会管理',t,'../bookSelect/bookCommitteeManagemengt.html')
outlookbar.addcsglxt('教材委员会信息管理',t,'../bookSelect/MaterialsCommitteeManagement.html')

t=outlookbar.addtitle('查看日志','查看日志',1)
outlookbar.addcsglxt('日志管理',t,'lotlogs.jsp')


t=outlookbar.addtitle('个人信息','个人信息',1)
outlookbar.addcsglxt('基本资料管理',t,'pupdatesysusers.jsp')
outlookbar.addcsglxt('修改登录密码',t,'../pages/updatepwd.jsp')

t=outlookbar.addtitle('统计分析','统计分析',1)
outlookbar.addcsglxt('抽奖信息统计',t,'../pages/marnavstj.jsp')
outlookbar.addcsglxt('中奖信息统计',t,'../pages/zjtj.jsp')



t=outlookbar.addtitle('旅客端管理','旅客端管理',1)
outlookbar.addcsglxt('旅客端查询',t,'../pages/applist.jsp')
outlookbar.addcsglxt('旅客端发布',t,'../pages/addapp.jsp')




