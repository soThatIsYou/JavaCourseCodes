CREATE TABLE `t_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(40) NOT NULL COMMENT '订单号',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  `product_name` varchar(255) DEFAULT NULL COMMENT '产品名',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `username` varchar(64) DEFAULT NULL COMMENT '用户名',
  `mobile` varchar(64) DEFAULT NULL COMMENT '手机号',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `create_time` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `update_time` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `idx_order_no` (`order_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单表’;

CREATE TABLE `t_product` (
  `product_no` varchar(64) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `name` varchar(512) DEFAULT NULL COMMENT '商品名称',
  `bref` varchar(2048) DEFAULT NULL COMMENT '简介',
  `detail` varchar(2048) DEFAULT NULL COMMENT '商品详情',
  `cover_image` varchar(512) DEFAULT NULL COMMENT '封面图',
  `list_image` varchar(512) DEFAULT NULL COMMENT '列表图',
  `price` double(11,2) DEFAULT NULL COMMENT '价格',
  `status` int(11) DEFAULT NULL COMMENT '0：下架 1：上架',
  `create_time` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `update_time` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  PRIMARY KEY (`courseNo`) USING BTREE,
  KEY `idx_product_no` (`courseNo`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品’;

CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名',
  `head_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `gender` int(11) DEFAULT '1' COMMENT '性别',
  `email` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `country` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '国家',
  `province` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '省',
  `city` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '市',
  `create_time` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `update_time` timestamp(3) NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '更新时间',
  `phone` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';
