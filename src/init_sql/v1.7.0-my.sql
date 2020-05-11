ALTER TABLE sql_workflow_content
    ADD remark TEXT NULL COMMENT '备注',
    ADD bak_sql_content TEXT NULL COMMENT '备份语句';


INSERT INTO auth_permission
(name, content_type_id, codename)
VALUES('查看所有上线sql', 24, 'sql_read_only');

ALTER TABLE sql_user
    ADD employee varchar(50) CHARACTER NULL COMMENT '员工类型',
    ADD manager varchar(126) CHARACTER NULL COMMENT '领导';

ALTER TABLE workflow_audit
    ADD pre_audit varchar(50) CHARACTER NULL COMMENT '前置审批者';
