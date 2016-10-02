insert into act_id_group (ID_,REV_,NAME_,TYPE_) values ('camunda-admin',1,'camunda BPM Administrators','SYSTEM');
insert into act_id_group (ID_,REV_,NAME_,TYPE_) values ('users',1,'Users','WORKFLOW');
insert into act_id_group (ID_,REV_,NAME_,TYPE_) values ('managers',1,'Managers','WORKFLOW');

insert into act_id_user (ID_,REV_,FIRST_,LAST_,EMAIL_,PWD_,PICTURE_ID_) values ('admin',1,'admin','user','','{SHA}cMzZAHM41tgd07YnFiG5z5qX6gA=',null);
insert into act_id_user (ID_,REV_,FIRST_,LAST_,EMAIL_,PWD_,PICTURE_ID_) values ('mike',1,'mike','h','','{SHA}cMzZAHM41tgd07YnFiG5z5qX6gA=',null);
insert into act_id_user (ID_,REV_,FIRST_,LAST_,EMAIL_,PWD_,PICTURE_ID_) values ('neil',1,'neil','f','','{SHA}cMzZAHM41tgd07YnFiG5z5qX6gA=',null);
insert into act_id_user (ID_,REV_,FIRST_,LAST_,EMAIL_,PWD_,PICTURE_ID_) values ('tim',1,'tim','h','','{SHA}cMzZAHM41tgd07YnFiG5z5qX6gA=',null);

insert into act_id_membership (USER_ID_,GROUP_ID_) values ('admin','camunda-admin');
insert into act_id_membership (USER_ID_,GROUP_ID_) values ('mike','users');
insert into act_id_membership (USER_ID_,GROUP_ID_) values ('neil','users');
insert into act_id_membership (USER_ID_,GROUP_ID_) values ('tim','managers');

insert into act_ru_filter (ID_,REV_,RESOURCE_TYPE_,NAME_,OWNER_,QUERY_,PROPERTIES_) values ('user_tasks_filter',2,'Task','User Tasks',null,'{"candidateGroup":"users"}','{"color":"--555555","showUndefinedVariable":false,"refresh":true,"priority":0}');
insert into act_ru_filter (ID_,REV_,RESOURCE_TYPE_,NAME_,OWNER_,QUERY_,PROPERTIES_) values ('manager_tasks_filter',2,'Task','Manager Tasks',null,'{"candidateGroup":"managers"}','{"color":"--555555","showUndefinedVariable":false,"refresh":true,"priority":0}');
insert into act_ru_filter (ID_,REV_,RESOURCE_TYPE_,NAME_,OWNER_,QUERY_,PROPERTIES_) values ('my_tasks_filter',2,'Task','My tasks',null,'{"taskAssigneeExpression":"$' || '{ currentUser() }"}','{"color":"--555555","showUndefinedVariable":false,"refresh":true,"priority":0}');


-- Grant camunda admin group authorization to everything
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_0',	1,	1,	'camunda-admin',	null,	0,	'*',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_1',	1,	1,	'camunda-admin',	null,	1,	'*',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_2',	1,	1,	'camunda-admin',	null,	2,	'*',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_3',	1,	1,	'camunda-admin',	null,	3,	'*',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_4',	1,	1,	'camunda-admin',	null,	4,	'*',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_5',	1,	1,	'camunda-admin',	null,	5,	'*',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_6',	1,	1,	'camunda-admin',	null,	6,	'*',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_7',	1,	1,	'camunda-admin',	null,	7,	'*',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_8',	1,	1,	'camunda-admin',	null,	8,	'*',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_9',	1,	1,	'camunda-admin',	null,	9,	'*',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_10',	1,	1,	'camunda-admin',	null,	10,	'*',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_11',	1,	1,	'camunda-admin',	null,	11,	'*',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_12',	1,	1,	'camunda-admin',	null,	12,	'*',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_13',	1,	1,	'camunda-admin',	null,	13,	'*',	2147483647);

-- Grant users access to tasklist
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('users_app_tasklist',	    1,	1,	'users',	        null,	0,	'tasklist',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('managers_app_tasklist',	1,	1,	'managers',	        null,	0,	'tasklist',	2147483647);

-- Grant users access to themselves
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('admin_self',	1,	1,	null,	            'admin',	1,	'admin',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('mike_self',	1,	1,	null,	            'mike', 	1,	'mike',	    2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('neil_self',	1,	1,	null,	            'neil', 	1,	'neil',	    2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('tim_self', 	1,	1,	null,	            'tim',	    1,	'tim',	    2147483647);

-- Grant groups access to themselves
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('camunda-admin_self',	1,	1,	'camunda-admin',	null,	2,	'camunda-admin',	2);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('users_self',       	1,	1,	'users',	        null,	2,	'users',        	2);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('managers_self',    	1,	1,	'managers',	        null,	2,	'managers',     	2);

-- Grant all users access to process instances
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('managers_proc-inst',	1,	1,	'managers',	        null,	8,	'*',	2147483647);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('users_proc-inst',	    1,	1,	'users',	        null,	8,	'*',	2147483647);

-- Grant users access to the invoice process
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('users_invoice',	1,	1,	'users',	        null,	6,	'invoice_process',	258);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('managers_invoice',	1,	1,	'managers',	        null,	6,	'invoice_process',	514);

-- Grant users access to their required filters
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('managers_my-tasks',	    1,	1,	'managers',	        null,	5,	'my_tasks_filter',	    2);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('managers_manager-tasks',	1,	1,	'managers',	        null,	5,	'manager_tasks_filter',	2);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('users_my-tasks',	        1,	1,	'users',	        null,	5,	'my_tasks_filter',	    2);
insert into act_ru_authorization (ID_,REV_,TYPE_,GROUP_ID_,USER_ID_,RESOURCE_TYPE_,RESOURCE_ID_,PERMS_) values ('users_user-tasks',	        1,	1,	'users',	        null,	5,	'user_tasks_filter',	2);
