drop schema if exists `parkinglot`;
create schema if not exists `parkinglot` default charset utf8;

use `parkinglot`;

drop table if exists `parkinglot`.`role`;
create table if not exists `parkinglot`.`role`(
    `id` int primary key AUTO_INCREMENT COMMENT '角色id',
    `role_name` VARCHAR(16) NOT NULL COMMENT '角色名称'
)engine = InnoDB default charset utf8 comment '角色信息表';
INSERT INTO `parkinglot`.`role`(role_name) VALUES('USER');
INSERT INTO `parkinglot`.`role`(role_name) VALUES('ADMIN');

drop table if exists `parkinglot`.`user`;
create table if not exists `parkinglot`.`user`(
    `id` bigint primary key auto_increment comment '用户id',
    `username` varchar(50) not null comment '用户名',
    `password` varchar(255) not null comment '用户密码',
    `create_time` datetime not null default current_timestamp comment '创建时间',
    `state` int not null default 0 comment '用户状态',
    `role_id` int not null default 1 comment '用户对应的角色id'
)engine = InnoDB default charset utf8 comment '用户信息表';
INSERT INTO `parkinglot`.`user`(username, password, create_time, state, role_id) VALUES('admin', 'admin', '2020-02-12 17:01:15', 0, 2);