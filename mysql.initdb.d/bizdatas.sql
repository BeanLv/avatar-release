USE `avatar`;

-- 电信相关套餐
INSERT INTO `operator`(`id`, `name`) VALUES
(1, '电信');

INSERT INTO `biz` (`id`, `name`, `operator`, `remark`) VALUES
(11, '50M', 1, NULL),
(12, '100M', 1, '原价199元折后 119元/月'),
(13, '200M', 1, '原价199元折后 140元/月'),
(14, '商业光纤专线', 1, '原价999元折后800元');

INSERT INTO `biz_property` (`biz`, `name`, `value`, `tag`) VALUES
(11, 'cost', '99', NULL),
(11, 'i1', '全国流量不限量', NULL),
(11, 'i2', '全国通话300分钟', NULL),
(11, 'i3', '50M独享光纤宽带', NULL),
(11, 'i4', '4K超清机顶盒、光猫', '送'),
(11, 'i5', '2个号码共享套餐', NULL),

(12, 'cost', '119', NULL),
(12, 'i1', '全国流量不限量', NULL),
(12, 'i2', '全国通话1600分钟', NULL),
(12, 'i3', '100M独享光纤宽带', NULL),
(12, 'i4', '4K超清机顶盒、光猫', '送'),
(12, 'i5', '3个号码共享套餐', NULL),

(13, 'cost', '140', NULL),
(13, 'i1', '全国流量不限量', NULL),
(13, 'i2', '全国通话1600分钟', NULL),
(13, 'i3', '200M独享光纤宽带', NULL),
(13, 'i4', '4K超清机顶盒、光猫', '送'),
(13, 'i5', '3个号码共享套餐', NULL),

(14, 'cost', '800', NULL),
(14, 'i1', '全国流量不限量', NULL),
(14, 'i2', '全国通话5000分钟', NULL),
(14, 'i3', '300M独享光纤宽带', NULL),
(14, 'i4', '超大IP上限(50台)终端', NULL),
(14, 'i5', '6个号码共享套餐', NULL);

-- 移动相关套餐
INSERT INTO `operator`(`id`, `name`) VALUES
(2, '移动');

INSERT INTO `biz` (`id`, `name`, `operator`, `remark`) VALUES
(21, '100M', 2, NULL),
(22, '200M ', 2, NULL);

INSERT INTO `biz_property` (`biz`, `name`, `value`, `tag`) VALUES
(21, 'cost', '98', NULL),
(21, 'i1', '全国流量不限量', NULl),
(21, 'i2', '全国通话100分钟', NULL),
(21, 'i3', '100M独享光纤宽带', NULL),
(21, 'i4', '光猫', '送'),
(21, 'i5', '1个号码共享套餐', NULL),

(22, 'cost', '139', NUll),
(22, 'i1', '全国流量不限量', NULL),
(22, 'i2', '全国通话150分钟', NULL),
(22, 'i3', '200M独享光纤宽带', NULL),
(22, 'i4', '光猫','送'),
(22, 'i5', '3个号码共享套餐', NULL);

-- 联通相关套餐
INSERT INTO `operator`(`id`, `name`) VALUES
(3, '联通');

INSERT INTO `biz` (`id`, `name`, `operator`, `remark`) VALUES
(31, '100M', 3, NULL),
(32, '200M ', 3, NULL);

INSERT INTO `biz_property` (`biz`, `name`, `value`, `tag`) VALUES
(31, 'cost', '98', NULL),
(31, 'i1', '全国流量不限量', NULL),
(31, 'i2', '全国通话1000分钟', NULL),
(31, 'i3', '100M独享光纤宽带', NULL),
(31, 'i4', '光猫', '送'),
(31, 'i5', '2个号码共享套餐', NULL),

(32, 'cost', '198', NULL),
(32, 'i1', '全国流量不限量', NULL),
(32, 'i2', '全国通话3000分钟', NULL),
(32, 'i3', '200M独享光纤宽带', NULL),
(32, 'i4', '光猫', '送'),
(32, 'i5', '4个号码共享套餐', NULL);