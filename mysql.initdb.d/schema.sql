USE `mysql`;

DROP SCHEMA IF EXISTS `avatar`;
CREATE SCHEMA `avatar`;

USE `avatar`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '状态. 1: 等待; 2: 处理中; 3: 完成; 4: 关闭',
  `biz` int(11) NOT NULL COMMENT '宽带业务 biz 表',
  `openid` varchar(128) NOT NULL COMMENT '用户在小程序端的openid',
  `realname` varchar(32) NOT NULL COMMENT '真实姓名',
  `nickname` varchar(32) NOT NULL COMMENT '昵称',
  `headimgurl` varchar(512) NOT NULL COMMENT '头像URL',
  `mobile` varchar(32) NOT NULL COMMENT '手机号码',
  `address` varchar(512) NOT NULL COMMENT '安装地址',
  `lon` float NULL COMMENT '经度',
  `lat` float NULL COMMENT '纬度',
  `installtime` DATETIME  NOT NULL COMMENT '安装时间',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE InnoDB COMMENT '订单表';

CREATE TABLE `biz` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(128) NOT NULL COMMENT '名称',
  `operator` int(11) NOT NULL COMMENT '运营商ID',
  `disabled` bit NOT NULL DEFAULT 0 COMMENT '是否禁用',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE InnoDB COMMENT '订单业务类型表';

CREATE TABLE `operator` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(32) NOT NULL COMMENT '运营商名称',
  `disabled` bit NOT NULL DEFAULT 0 COMMENT '是否禁用',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE InnoDB COMMENT '运营商';

CREATE TABLE `order_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `orderid` int(11) NOT NULL COMMENT '订单ID',
  `operation` int(11) NOT NULL COMMENT '操作 1: 提交订单; 2: 处理; 3: 完成; 4: 取消, 5: 关闭',
  `opname` varchar(32) NOT NULL COMMENT '人员名称',
  `remark` varchar(128) NULL COMMENT '备注信息',
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
   PRIMARY KEY (`id`)
) ENGINE InnoDB COMMENT '订单记录表';

CREATE TABLE `pageview_statistic` (
    `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `date` date NOT NULL COMMENT '日期',
    `num` int(11) NOT NULL COMMENT '当天访问数量',
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `uidx_pageview_date` (`date`)
) ENGINE InnoDB COMMENT '页面访问统计';

CREATE TABLE `order_statistic` (
    `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
    `date` date NOT NULL COMMENT '日期',
    `num` int(11) NOT NULL COMMENT '当天访问数量',
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `uidx_order_date` (`date`)
) ENGINE InnoDB COMMENT '订单统计';