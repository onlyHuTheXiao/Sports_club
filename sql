CREATE TABLE `account` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码，密文',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除， 0 未删除， 1 已删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint NOT NULL DEFAULT '0' COMMENT '创建人id',
  `update_user_id` bigint NOT NULL DEFAULT '0' COMMENT '更新人id',
  PRIMARY KEY (`id`) USING BTREE,
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='账户信息';

-- 每个会员信息可能包括名字和姓氏、出生日期、性别、邮政地址、联系电话号码和一些其他可能有用的信息，例如健康状况、过敏信息或其他任何信息。可能还需要当年 9 月 1 日的年龄、开始和结束会员资格的日期以及会员资格类型和支付的费用金额。每天的访客数量可以单独登录系统，无需他们的个人信息。

CREATE TABLE `member` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '姓名',
	`surname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '姓氏',
  `gender` int NOT NULL DEFAULT '0' COMMENT '性别 1 男， 2 女, 3 保密',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `education` int NOT NULL DEFAULT '0' COMMENT '学历，1：初中及以下，2：高中，3：大专，4：本科，5：硕士，6：博士',
	`height` int(10) DEFAULT NULL COMMENT '身高（cm）',
  `weight` int(10) DEFAULT NULL COMMENT '体重（kg）',
  `blood_type` int(2) DEFAULT NULL COMMENT '血型',
  `postal_address` varchar(255) DEFAULT NULL COMMENT '邮政地址',
	`health` varchar(255) DEFAULT NULL COMMENT '健康状况',
	`allergy_infor` varchar(255) DEFAULT NULL COMMENT '过敏信息',
  `status` int NOT NULL DEFAULT '0' COMMENT '状态， 0 否， 1是,2注销',
  `is_del` int NOT NULL DEFAULT '0' COMMENT '是否删除， 0 未删除， 1 已删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint NOT NULL DEFAULT '0' COMMENT '创建人id',
  `update_user_id` bigint NOT NULL DEFAULT '0' COMMENT '更新人id',
  `ucode` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='会员信息表';