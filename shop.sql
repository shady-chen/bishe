/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-12-12 17:40:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `s_address`
-- ----------------------------
DROP TABLE IF EXISTS `s_address`;
CREATE TABLE `s_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL DEFAULT '无' COMMENT '用户收货地址',
  `user_id` int(11) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of s_address
-- ----------------------------
INSERT INTO `s_address` VALUES ('1', '福建省上杭县龙岩', '8', '1513066231', '1513066231', null);

-- ----------------------------
-- Table structure for `s_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `s_admin_menu`;
CREATE TABLE `s_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父菜单id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `app` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parent_id`),
  KEY `model` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COMMENT='后台菜单表';

-- ----------------------------
-- Records of s_admin_menu
-- ----------------------------
INSERT INTO `s_admin_menu` VALUES ('1', '0', '0', '1', '20', 'admin', 'Plugin', 'default', '', '插件管理', 'cloud', '插件管理');
INSERT INTO `s_admin_menu` VALUES ('2', '1', '1', '1', '10000', 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理');
INSERT INTO `s_admin_menu` VALUES ('3', '2', '1', '0', '10000', 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理');
INSERT INTO `s_admin_menu` VALUES ('4', '2', '2', '0', '10000', 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序');
INSERT INTO `s_admin_menu` VALUES ('5', '2', '1', '0', '10000', 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子');
INSERT INTO `s_admin_menu` VALUES ('6', '0', '0', '1', '0', 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口');
INSERT INTO `s_admin_menu` VALUES ('7', '6', '1', '1', '50', 'admin', 'Link', 'index', '', '友情链接', '', '友情链接管理');
INSERT INTO `s_admin_menu` VALUES ('8', '7', '1', '0', '10000', 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接');
INSERT INTO `s_admin_menu` VALUES ('9', '7', '2', '0', '10000', 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存');
INSERT INTO `s_admin_menu` VALUES ('10', '7', '1', '0', '10000', 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接');
INSERT INTO `s_admin_menu` VALUES ('11', '7', '2', '0', '10000', 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存');
INSERT INTO `s_admin_menu` VALUES ('12', '7', '2', '0', '10000', 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接');
INSERT INTO `s_admin_menu` VALUES ('13', '7', '2', '0', '10000', 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序');
INSERT INTO `s_admin_menu` VALUES ('14', '7', '2', '0', '10000', 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏');
INSERT INTO `s_admin_menu` VALUES ('15', '6', '1', '1', '10', 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置');
INSERT INTO `s_admin_menu` VALUES ('16', '15', '2', '0', '10000', 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存');
INSERT INTO `s_admin_menu` VALUES ('17', '15', '1', '0', '10000', 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板');
INSERT INTO `s_admin_menu` VALUES ('18', '15', '2', '0', '10000', 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交');
INSERT INTO `s_admin_menu` VALUES ('19', '15', '1', '0', '10000', 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试');
INSERT INTO `s_admin_menu` VALUES ('20', '6', '1', '0', '10000', 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理');
INSERT INTO `s_admin_menu` VALUES ('21', '20', '1', '0', '10000', 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表');
INSERT INTO `s_admin_menu` VALUES ('22', '20', '1', '0', '10000', 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加');
INSERT INTO `s_admin_menu` VALUES ('23', '20', '2', '0', '10000', 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存');
INSERT INTO `s_admin_menu` VALUES ('24', '20', '1', '0', '10000', 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑');
INSERT INTO `s_admin_menu` VALUES ('25', '20', '2', '0', '10000', 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存');
INSERT INTO `s_admin_menu` VALUES ('26', '20', '2', '0', '10000', 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除');
INSERT INTO `s_admin_menu` VALUES ('27', '20', '2', '0', '10000', 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序');
INSERT INTO `s_admin_menu` VALUES ('28', '20', '1', '0', '10000', 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单');
INSERT INTO `s_admin_menu` VALUES ('29', '6', '1', '1', '30', 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理');
INSERT INTO `s_admin_menu` VALUES ('30', '29', '1', '0', '10000', 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航');
INSERT INTO `s_admin_menu` VALUES ('31', '29', '2', '0', '10000', 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存');
INSERT INTO `s_admin_menu` VALUES ('32', '29', '1', '0', '10000', 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航');
INSERT INTO `s_admin_menu` VALUES ('33', '29', '2', '0', '10000', 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存');
INSERT INTO `s_admin_menu` VALUES ('34', '29', '2', '0', '10000', 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航');
INSERT INTO `s_admin_menu` VALUES ('35', '29', '1', '0', '10000', 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单');
INSERT INTO `s_admin_menu` VALUES ('36', '35', '1', '0', '10000', 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单');
INSERT INTO `s_admin_menu` VALUES ('37', '35', '2', '0', '10000', 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存');
INSERT INTO `s_admin_menu` VALUES ('38', '35', '1', '0', '10000', 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单');
INSERT INTO `s_admin_menu` VALUES ('39', '35', '2', '0', '10000', 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存');
INSERT INTO `s_admin_menu` VALUES ('40', '35', '2', '0', '10000', 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单');
INSERT INTO `s_admin_menu` VALUES ('41', '35', '2', '0', '10000', 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序');
INSERT INTO `s_admin_menu` VALUES ('42', '1', '1', '1', '10000', 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表');
INSERT INTO `s_admin_menu` VALUES ('43', '42', '2', '0', '10000', 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用');
INSERT INTO `s_admin_menu` VALUES ('44', '42', '1', '0', '10000', 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置');
INSERT INTO `s_admin_menu` VALUES ('45', '42', '2', '0', '10000', 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交');
INSERT INTO `s_admin_menu` VALUES ('46', '42', '2', '0', '10000', 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装');
INSERT INTO `s_admin_menu` VALUES ('47', '42', '2', '0', '10000', 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新');
INSERT INTO `s_admin_menu` VALUES ('48', '42', '2', '0', '10000', 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件');
INSERT INTO `s_admin_menu` VALUES ('49', '109', '0', '1', '10000', 'admin', 'User', 'default', '', '管理组', '', '管理组');
INSERT INTO `s_admin_menu` VALUES ('50', '49', '1', '1', '10000', 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理');
INSERT INTO `s_admin_menu` VALUES ('51', '50', '1', '0', '10000', 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色');
INSERT INTO `s_admin_menu` VALUES ('52', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交');
INSERT INTO `s_admin_menu` VALUES ('53', '50', '1', '0', '10000', 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色');
INSERT INTO `s_admin_menu` VALUES ('54', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交');
INSERT INTO `s_admin_menu` VALUES ('55', '50', '2', '0', '10000', 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色');
INSERT INTO `s_admin_menu` VALUES ('56', '50', '1', '0', '10000', 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限');
INSERT INTO `s_admin_menu` VALUES ('57', '50', '2', '0', '10000', 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交');
INSERT INTO `s_admin_menu` VALUES ('58', '0', '1', '0', '10000', 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站');
INSERT INTO `s_admin_menu` VALUES ('59', '58', '2', '0', '10000', 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原');
INSERT INTO `s_admin_menu` VALUES ('60', '58', '2', '0', '10000', 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除');
INSERT INTO `s_admin_menu` VALUES ('61', '6', '1', '1', '10000', 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理');
INSERT INTO `s_admin_menu` VALUES ('62', '61', '1', '0', '10000', 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则');
INSERT INTO `s_admin_menu` VALUES ('63', '61', '2', '0', '10000', 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交');
INSERT INTO `s_admin_menu` VALUES ('64', '61', '1', '0', '10000', 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑');
INSERT INTO `s_admin_menu` VALUES ('65', '61', '2', '0', '10000', 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交');
INSERT INTO `s_admin_menu` VALUES ('66', '61', '2', '0', '10000', 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除');
INSERT INTO `s_admin_menu` VALUES ('67', '61', '2', '0', '10000', 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用');
INSERT INTO `s_admin_menu` VALUES ('68', '61', '2', '0', '10000', 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用');
INSERT INTO `s_admin_menu` VALUES ('69', '61', '2', '0', '10000', 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序');
INSERT INTO `s_admin_menu` VALUES ('70', '61', '1', '0', '10000', 'admin', 'Route', 'select', '', '选择URL', '', '选择URL');
INSERT INTO `s_admin_menu` VALUES ('71', '6', '1', '1', '0', 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息');
INSERT INTO `s_admin_menu` VALUES ('72', '71', '2', '0', '10000', 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交');
INSERT INTO `s_admin_menu` VALUES ('73', '6', '1', '0', '10000', 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改');
INSERT INTO `s_admin_menu` VALUES ('74', '73', '2', '0', '10000', 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交');
INSERT INTO `s_admin_menu` VALUES ('75', '6', '1', '1', '10000', 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置');
INSERT INTO `s_admin_menu` VALUES ('76', '75', '2', '0', '10000', 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交');
INSERT INTO `s_admin_menu` VALUES ('77', '6', '1', '0', '10000', 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存');
INSERT INTO `s_admin_menu` VALUES ('78', '6', '1', '1', '40', 'admin', 'Slide', 'index', '', '幻灯片管理', '', '幻灯片管理');
INSERT INTO `s_admin_menu` VALUES ('79', '78', '1', '0', '10000', 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片');
INSERT INTO `s_admin_menu` VALUES ('80', '78', '2', '0', '10000', 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交');
INSERT INTO `s_admin_menu` VALUES ('81', '78', '1', '0', '10000', 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片');
INSERT INTO `s_admin_menu` VALUES ('82', '78', '2', '0', '10000', 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交');
INSERT INTO `s_admin_menu` VALUES ('83', '78', '2', '0', '10000', 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片');
INSERT INTO `s_admin_menu` VALUES ('84', '78', '1', '0', '10000', 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表');
INSERT INTO `s_admin_menu` VALUES ('85', '84', '1', '0', '10000', 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加');
INSERT INTO `s_admin_menu` VALUES ('86', '84', '2', '0', '10000', 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交');
INSERT INTO `s_admin_menu` VALUES ('87', '84', '1', '0', '10000', 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑');
INSERT INTO `s_admin_menu` VALUES ('88', '84', '2', '0', '10000', 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交');
INSERT INTO `s_admin_menu` VALUES ('89', '84', '2', '0', '10000', 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除');
INSERT INTO `s_admin_menu` VALUES ('90', '84', '2', '0', '10000', 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏');
INSERT INTO `s_admin_menu` VALUES ('91', '84', '2', '0', '10000', 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示');
INSERT INTO `s_admin_menu` VALUES ('92', '84', '2', '0', '10000', 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序');
INSERT INTO `s_admin_menu` VALUES ('93', '6', '1', '1', '10000', 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储');
INSERT INTO `s_admin_menu` VALUES ('94', '93', '2', '0', '10000', 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交');
INSERT INTO `s_admin_menu` VALUES ('95', '6', '1', '1', '20', 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理');
INSERT INTO `s_admin_menu` VALUES ('96', '95', '1', '0', '10000', 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板');
INSERT INTO `s_admin_menu` VALUES ('97', '95', '2', '0', '10000', 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板');
INSERT INTO `s_admin_menu` VALUES ('98', '95', '2', '0', '10000', 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装');
INSERT INTO `s_admin_menu` VALUES ('99', '95', '2', '0', '10000', 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新');
INSERT INTO `s_admin_menu` VALUES ('100', '95', '2', '0', '10000', 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板');
INSERT INTO `s_admin_menu` VALUES ('101', '95', '1', '0', '10000', 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板');
INSERT INTO `s_admin_menu` VALUES ('102', '95', '1', '0', '10000', 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置');
INSERT INTO `s_admin_menu` VALUES ('103', '95', '1', '0', '10000', 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表');
INSERT INTO `s_admin_menu` VALUES ('104', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑');
INSERT INTO `s_admin_menu` VALUES ('105', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存');
INSERT INTO `s_admin_menu` VALUES ('106', '95', '2', '0', '10000', 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除');
INSERT INTO `s_admin_menu` VALUES ('107', '95', '2', '0', '10000', 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存');
INSERT INTO `s_admin_menu` VALUES ('108', '95', '1', '0', '10000', 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源');
INSERT INTO `s_admin_menu` VALUES ('109', '0', '0', '1', '10', 'user', 'AdminIndex', 'default', '', '用户管理', 'group', '用户管理');
INSERT INTO `s_admin_menu` VALUES ('110', '49', '1', '1', '10000', 'admin', 'User', 'index', '', '管理员', '', '管理员管理');
INSERT INTO `s_admin_menu` VALUES ('111', '110', '1', '0', '10000', 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加');
INSERT INTO `s_admin_menu` VALUES ('112', '110', '2', '0', '10000', 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交');
INSERT INTO `s_admin_menu` VALUES ('113', '110', '1', '0', '10000', 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑');
INSERT INTO `s_admin_menu` VALUES ('114', '110', '2', '0', '10000', 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交');
INSERT INTO `s_admin_menu` VALUES ('115', '110', '1', '0', '10000', 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改');
INSERT INTO `s_admin_menu` VALUES ('116', '110', '2', '0', '10000', 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交');
INSERT INTO `s_admin_menu` VALUES ('117', '110', '2', '0', '10000', 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除');
INSERT INTO `s_admin_menu` VALUES ('118', '110', '2', '0', '10000', 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员');
INSERT INTO `s_admin_menu` VALUES ('119', '110', '2', '0', '10000', 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员');
INSERT INTO `s_admin_menu` VALUES ('120', '0', '0', '1', '30', 'portal', 'AdminIndex', 'default', '', '门户管理', 'th', '门户管理');
INSERT INTO `s_admin_menu` VALUES ('121', '120', '1', '1', '10000', 'portal', 'AdminArticle', 'index', '', '文章管理', '', '文章列表');
INSERT INTO `s_admin_menu` VALUES ('122', '121', '1', '0', '10000', 'portal', 'AdminArticle', 'add', '', '添加文章', '', '添加文章');
INSERT INTO `s_admin_menu` VALUES ('123', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'addPost', '', '添加文章提交', '', '添加文章提交');
INSERT INTO `s_admin_menu` VALUES ('124', '121', '1', '0', '10000', 'portal', 'AdminArticle', 'edit', '', '编辑文章', '', '编辑文章');
INSERT INTO `s_admin_menu` VALUES ('125', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'editPost', '', '编辑文章提交', '', '编辑文章提交');
INSERT INTO `s_admin_menu` VALUES ('126', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'delete', '', '文章删除', '', '文章删除');
INSERT INTO `s_admin_menu` VALUES ('127', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'publish', '', '文章发布', '', '文章发布');
INSERT INTO `s_admin_menu` VALUES ('128', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'top', '', '文章置顶', '', '文章置顶');
INSERT INTO `s_admin_menu` VALUES ('129', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'recommend', '', '文章推荐', '', '文章推荐');
INSERT INTO `s_admin_menu` VALUES ('130', '121', '2', '0', '10000', 'portal', 'AdminArticle', 'listOrder', '', '文章排序', '', '文章排序');
INSERT INTO `s_admin_menu` VALUES ('131', '120', '1', '1', '10000', 'portal', 'AdminCategory', 'index', '', '分类管理', '', '文章分类列表');
INSERT INTO `s_admin_menu` VALUES ('132', '131', '1', '0', '10000', 'portal', 'AdminCategory', 'add', '', '添加文章分类', '', '添加文章分类');
INSERT INTO `s_admin_menu` VALUES ('133', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'addPost', '', '添加文章分类提交', '', '添加文章分类提交');
INSERT INTO `s_admin_menu` VALUES ('134', '131', '1', '0', '10000', 'portal', 'AdminCategory', 'edit', '', '编辑文章分类', '', '编辑文章分类');
INSERT INTO `s_admin_menu` VALUES ('135', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'editPost', '', '编辑文章分类提交', '', '编辑文章分类提交');
INSERT INTO `s_admin_menu` VALUES ('136', '131', '1', '0', '10000', 'portal', 'AdminCategory', 'select', '', '文章分类选择对话框', '', '文章分类选择对话框');
INSERT INTO `s_admin_menu` VALUES ('137', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'listOrder', '', '文章分类排序', '', '文章分类排序');
INSERT INTO `s_admin_menu` VALUES ('138', '131', '2', '0', '10000', 'portal', 'AdminCategory', 'delete', '', '删除文章分类', '', '删除文章分类');
INSERT INTO `s_admin_menu` VALUES ('139', '120', '1', '1', '10000', 'portal', 'AdminPage', 'index', '', '页面管理', '', '页面管理');
INSERT INTO `s_admin_menu` VALUES ('140', '139', '1', '0', '10000', 'portal', 'AdminPage', 'add', '', '添加页面', '', '添加页面');
INSERT INTO `s_admin_menu` VALUES ('141', '139', '2', '0', '10000', 'portal', 'AdminPage', 'addPost', '', '添加页面提交', '', '添加页面提交');
INSERT INTO `s_admin_menu` VALUES ('142', '139', '1', '0', '10000', 'portal', 'AdminPage', 'edit', '', '编辑页面', '', '编辑页面');
INSERT INTO `s_admin_menu` VALUES ('143', '139', '2', '0', '10000', 'portal', 'AdminPage', 'editPost', '', '编辑页面提交', '', '编辑页面提交');
INSERT INTO `s_admin_menu` VALUES ('144', '139', '2', '0', '10000', 'portal', 'AdminPage', 'delete', '', '删除页面', '', '删除页面');
INSERT INTO `s_admin_menu` VALUES ('145', '120', '1', '1', '10000', 'portal', 'AdminTag', 'index', '', '文章标签', '', '文章标签');
INSERT INTO `s_admin_menu` VALUES ('146', '145', '1', '0', '10000', 'portal', 'AdminTag', 'add', '', '添加文章标签', '', '添加文章标签');
INSERT INTO `s_admin_menu` VALUES ('147', '145', '2', '0', '10000', 'portal', 'AdminTag', 'addPost', '', '添加文章标签提交', '', '添加文章标签提交');
INSERT INTO `s_admin_menu` VALUES ('148', '145', '2', '0', '10000', 'portal', 'AdminTag', 'upStatus', '', '更新标签状态', '', '更新标签状态');
INSERT INTO `s_admin_menu` VALUES ('149', '145', '2', '0', '10000', 'portal', 'AdminTag', 'delete', '', '删除文章标签', '', '删除文章标签');
INSERT INTO `s_admin_menu` VALUES ('150', '0', '1', '0', '10000', 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表');
INSERT INTO `s_admin_menu` VALUES ('151', '150', '2', '0', '10000', 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件');
INSERT INTO `s_admin_menu` VALUES ('152', '109', '0', '1', '10000', 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组');
INSERT INTO `s_admin_menu` VALUES ('153', '152', '1', '1', '10000', 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户');
INSERT INTO `s_admin_menu` VALUES ('154', '153', '2', '0', '10000', 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑');
INSERT INTO `s_admin_menu` VALUES ('155', '153', '2', '0', '10000', 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用');
INSERT INTO `s_admin_menu` VALUES ('156', '152', '1', '1', '10000', 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户');
INSERT INTO `s_admin_menu` VALUES ('157', '156', '2', '0', '10000', 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定');
INSERT INTO `s_admin_menu` VALUES ('158', '6', '1', '1', '10000', 'user', 'AdminUserAction', 'index', '', '用户操作管理', '', '用户操作管理');
INSERT INTO `s_admin_menu` VALUES ('159', '158', '1', '0', '10000', 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作');
INSERT INTO `s_admin_menu` VALUES ('160', '158', '2', '0', '10000', 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交');
INSERT INTO `s_admin_menu` VALUES ('161', '158', '1', '0', '10000', 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作');
INSERT INTO `s_admin_menu` VALUES ('162', '164', '1', '1', '10000', 'shop', 'AdminGoods', 'index', '', '商品管理', '', '商品管理');
INSERT INTO `s_admin_menu` VALUES ('163', '164', '1', '1', '10000', 'shop', 'AdminGoodsType', 'index', '', '分类管理', '', '商品分类列表');
INSERT INTO `s_admin_menu` VALUES ('164', '0', '0', '1', '30', 'shop', 'AdminIndex', 'default', '', '商品管理', 'th', '商品管理');

-- ----------------------------
-- Table structure for `s_asset`
-- ----------------------------
DROP TABLE IF EXISTS `s_asset`;
CREATE TABLE `s_asset` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `file_size` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小,单位B',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

-- ----------------------------
-- Records of s_asset
-- ----------------------------

-- ----------------------------
-- Table structure for `s_auth_access`
-- ----------------------------
DROP TABLE IF EXISTS `s_auth_access`;
CREATE TABLE `s_auth_access` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限授权表';

-- ----------------------------
-- Records of s_auth_access
-- ----------------------------

-- ----------------------------
-- Table structure for `s_auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `s_auth_rule`;
CREATE TABLE `s_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(15) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `module` (`app`,`status`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则表';

-- ----------------------------
-- Records of s_auth_rule
-- ----------------------------
INSERT INTO `s_auth_rule` VALUES ('1', '1', 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `s_auth_rule` VALUES ('2', '1', 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `s_auth_rule` VALUES ('3', '1', 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `s_auth_rule` VALUES ('4', '1', 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', '');
INSERT INTO `s_auth_rule` VALUES ('5', '1', 'admin', 'admin_url', 'admin/Link/index', '', '友情链接', '');
INSERT INTO `s_auth_rule` VALUES ('6', '1', 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `s_auth_rule` VALUES ('7', '1', 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `s_auth_rule` VALUES ('8', '1', 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `s_auth_rule` VALUES ('9', '1', 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `s_auth_rule` VALUES ('10', '1', 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `s_auth_rule` VALUES ('11', '1', 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `s_auth_rule` VALUES ('12', '1', 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `s_auth_rule` VALUES ('13', '1', 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `s_auth_rule` VALUES ('14', '1', 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `s_auth_rule` VALUES ('15', '1', 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `s_auth_rule` VALUES ('16', '1', 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `s_auth_rule` VALUES ('17', '1', 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `s_auth_rule` VALUES ('18', '1', 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `s_auth_rule` VALUES ('19', '1', 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `s_auth_rule` VALUES ('20', '1', 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `s_auth_rule` VALUES ('21', '1', 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `s_auth_rule` VALUES ('22', '1', 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `s_auth_rule` VALUES ('23', '1', 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `s_auth_rule` VALUES ('24', '1', 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `s_auth_rule` VALUES ('25', '1', 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `s_auth_rule` VALUES ('26', '1', 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `s_auth_rule` VALUES ('27', '1', 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `s_auth_rule` VALUES ('28', '1', 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `s_auth_rule` VALUES ('29', '1', 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `s_auth_rule` VALUES ('30', '1', 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `s_auth_rule` VALUES ('31', '1', 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `s_auth_rule` VALUES ('32', '1', 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `s_auth_rule` VALUES ('33', '1', 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `s_auth_rule` VALUES ('34', '1', 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `s_auth_rule` VALUES ('35', '1', 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `s_auth_rule` VALUES ('36', '1', 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `s_auth_rule` VALUES ('37', '1', 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `s_auth_rule` VALUES ('38', '1', 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `s_auth_rule` VALUES ('39', '1', 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `s_auth_rule` VALUES ('40', '1', 'admin', 'admin_url', 'admin/Plugin/default', '', '插件管理', '');
INSERT INTO `s_auth_rule` VALUES ('41', '1', 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', '');
INSERT INTO `s_auth_rule` VALUES ('42', '1', 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `s_auth_rule` VALUES ('43', '1', 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `s_auth_rule` VALUES ('44', '1', 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `s_auth_rule` VALUES ('45', '1', 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `s_auth_rule` VALUES ('46', '1', 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `s_auth_rule` VALUES ('47', '1', 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `s_auth_rule` VALUES ('48', '1', 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `s_auth_rule` VALUES ('49', '1', 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `s_auth_rule` VALUES ('50', '1', 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `s_auth_rule` VALUES ('51', '1', 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `s_auth_rule` VALUES ('52', '1', 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `s_auth_rule` VALUES ('53', '1', 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `s_auth_rule` VALUES ('54', '1', 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `s_auth_rule` VALUES ('55', '1', 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `s_auth_rule` VALUES ('56', '1', 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `s_auth_rule` VALUES ('57', '1', 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `s_auth_rule` VALUES ('58', '1', 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `s_auth_rule` VALUES ('59', '1', 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `s_auth_rule` VALUES ('60', '1', 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `s_auth_rule` VALUES ('61', '1', 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `s_auth_rule` VALUES ('62', '1', 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `s_auth_rule` VALUES ('63', '1', 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `s_auth_rule` VALUES ('64', '1', 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `s_auth_rule` VALUES ('65', '1', 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `s_auth_rule` VALUES ('66', '1', 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `s_auth_rule` VALUES ('67', '1', 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `s_auth_rule` VALUES ('68', '1', 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `s_auth_rule` VALUES ('69', '1', 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `s_auth_rule` VALUES ('70', '1', 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `s_auth_rule` VALUES ('71', '1', 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `s_auth_rule` VALUES ('72', '1', 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `s_auth_rule` VALUES ('73', '1', 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `s_auth_rule` VALUES ('74', '1', 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `s_auth_rule` VALUES ('75', '1', 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `s_auth_rule` VALUES ('76', '1', 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `s_auth_rule` VALUES ('77', '1', 'admin', 'admin_url', 'admin/Slide/index', '', '幻灯片管理', '');
INSERT INTO `s_auth_rule` VALUES ('78', '1', 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `s_auth_rule` VALUES ('79', '1', 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `s_auth_rule` VALUES ('80', '1', 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `s_auth_rule` VALUES ('81', '1', 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `s_auth_rule` VALUES ('82', '1', 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `s_auth_rule` VALUES ('83', '1', 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `s_auth_rule` VALUES ('84', '1', 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `s_auth_rule` VALUES ('85', '1', 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `s_auth_rule` VALUES ('86', '1', 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `s_auth_rule` VALUES ('87', '1', 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `s_auth_rule` VALUES ('88', '1', 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `s_auth_rule` VALUES ('89', '1', 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `s_auth_rule` VALUES ('90', '1', 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `s_auth_rule` VALUES ('91', '1', 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `s_auth_rule` VALUES ('92', '1', 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `s_auth_rule` VALUES ('93', '1', 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `s_auth_rule` VALUES ('94', '1', 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `s_auth_rule` VALUES ('95', '1', 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `s_auth_rule` VALUES ('96', '1', 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `s_auth_rule` VALUES ('97', '1', 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `s_auth_rule` VALUES ('98', '1', 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `s_auth_rule` VALUES ('99', '1', 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `s_auth_rule` VALUES ('100', '1', 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `s_auth_rule` VALUES ('101', '1', 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `s_auth_rule` VALUES ('102', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `s_auth_rule` VALUES ('103', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `s_auth_rule` VALUES ('104', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `s_auth_rule` VALUES ('105', '1', 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `s_auth_rule` VALUES ('106', '1', 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `s_auth_rule` VALUES ('107', '1', 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `s_auth_rule` VALUES ('108', '1', 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `s_auth_rule` VALUES ('109', '1', 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `s_auth_rule` VALUES ('110', '1', 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `s_auth_rule` VALUES ('111', '1', 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `s_auth_rule` VALUES ('112', '1', 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `s_auth_rule` VALUES ('113', '1', 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `s_auth_rule` VALUES ('114', '1', 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `s_auth_rule` VALUES ('115', '1', 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `s_auth_rule` VALUES ('116', '1', 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `s_auth_rule` VALUES ('117', '1', 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `s_auth_rule` VALUES ('118', '1', 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `s_auth_rule` VALUES ('119', '1', 'portal', 'admin_url', 'portal/AdminArticle/index', '', '文章管理', '');
INSERT INTO `s_auth_rule` VALUES ('120', '1', 'portal', 'admin_url', 'portal/AdminArticle/add', '', '添加文章', '');
INSERT INTO `s_auth_rule` VALUES ('121', '1', 'portal', 'admin_url', 'portal/AdminArticle/addPost', '', '添加文章提交', '');
INSERT INTO `s_auth_rule` VALUES ('122', '1', 'portal', 'admin_url', 'portal/AdminArticle/edit', '', '编辑文章', '');
INSERT INTO `s_auth_rule` VALUES ('123', '1', 'portal', 'admin_url', 'portal/AdminArticle/editPost', '', '编辑文章提交', '');
INSERT INTO `s_auth_rule` VALUES ('124', '1', 'portal', 'admin_url', 'portal/AdminArticle/delete', '', '文章删除', '');
INSERT INTO `s_auth_rule` VALUES ('125', '1', 'portal', 'admin_url', 'portal/AdminArticle/publish', '', '文章发布', '');
INSERT INTO `s_auth_rule` VALUES ('126', '1', 'portal', 'admin_url', 'portal/AdminArticle/top', '', '文章置顶', '');
INSERT INTO `s_auth_rule` VALUES ('127', '1', 'portal', 'admin_url', 'portal/AdminArticle/recommend', '', '文章推荐', '');
INSERT INTO `s_auth_rule` VALUES ('128', '1', 'portal', 'admin_url', 'portal/AdminArticle/listOrder', '', '文章排序', '');
INSERT INTO `s_auth_rule` VALUES ('129', '1', 'portal', 'admin_url', 'portal/AdminCategory/index', '', '分类管理', '');
INSERT INTO `s_auth_rule` VALUES ('130', '1', 'portal', 'admin_url', 'portal/AdminCategory/add', '', '添加文章分类', '');
INSERT INTO `s_auth_rule` VALUES ('131', '1', 'portal', 'admin_url', 'portal/AdminCategory/addPost', '', '添加文章分类提交', '');
INSERT INTO `s_auth_rule` VALUES ('132', '1', 'portal', 'admin_url', 'portal/AdminCategory/edit', '', '编辑文章分类', '');
INSERT INTO `s_auth_rule` VALUES ('133', '1', 'portal', 'admin_url', 'portal/AdminCategory/editPost', '', '编辑文章分类提交', '');
INSERT INTO `s_auth_rule` VALUES ('134', '1', 'portal', 'admin_url', 'portal/AdminCategory/select', '', '文章分类选择对话框', '');
INSERT INTO `s_auth_rule` VALUES ('135', '1', 'portal', 'admin_url', 'portal/AdminCategory/listOrder', '', '文章分类排序', '');
INSERT INTO `s_auth_rule` VALUES ('136', '1', 'portal', 'admin_url', 'portal/AdminCategory/delete', '', '删除文章分类', '');
INSERT INTO `s_auth_rule` VALUES ('137', '1', 'portal', 'admin_url', 'portal/AdminIndex/default', '', '门户管理', '');
INSERT INTO `s_auth_rule` VALUES ('138', '1', 'portal', 'admin_url', 'portal/AdminPage/index', '', '页面管理', '');
INSERT INTO `s_auth_rule` VALUES ('139', '1', 'portal', 'admin_url', 'portal/AdminPage/add', '', '添加页面', '');
INSERT INTO `s_auth_rule` VALUES ('140', '1', 'portal', 'admin_url', 'portal/AdminPage/addPost', '', '添加页面提交', '');
INSERT INTO `s_auth_rule` VALUES ('141', '1', 'portal', 'admin_url', 'portal/AdminPage/edit', '', '编辑页面', '');
INSERT INTO `s_auth_rule` VALUES ('142', '1', 'portal', 'admin_url', 'portal/AdminPage/editPost', '', '编辑页面提交', '');
INSERT INTO `s_auth_rule` VALUES ('143', '1', 'portal', 'admin_url', 'portal/AdminPage/delete', '', '删除页面', '');
INSERT INTO `s_auth_rule` VALUES ('144', '1', 'portal', 'admin_url', 'portal/AdminTag/index', '', '文章标签', '');
INSERT INTO `s_auth_rule` VALUES ('145', '1', 'portal', 'admin_url', 'portal/AdminTag/add', '', '添加文章标签', '');
INSERT INTO `s_auth_rule` VALUES ('146', '1', 'portal', 'admin_url', 'portal/AdminTag/addPost', '', '添加文章标签提交', '');
INSERT INTO `s_auth_rule` VALUES ('147', '1', 'portal', 'admin_url', 'portal/AdminTag/upStatus', '', '更新标签状态', '');
INSERT INTO `s_auth_rule` VALUES ('148', '1', 'portal', 'admin_url', 'portal/AdminTag/delete', '', '删除文章标签', '');
INSERT INTO `s_auth_rule` VALUES ('149', '1', 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `s_auth_rule` VALUES ('150', '1', 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `s_auth_rule` VALUES ('151', '1', 'user', 'admin_url', 'user/AdminIndex/default', '', '用户管理', '');
INSERT INTO `s_auth_rule` VALUES ('152', '1', 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', '');
INSERT INTO `s_auth_rule` VALUES ('153', '1', 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', '');
INSERT INTO `s_auth_rule` VALUES ('154', '1', 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `s_auth_rule` VALUES ('155', '1', 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `s_auth_rule` VALUES ('156', '1', 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `s_auth_rule` VALUES ('157', '1', 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `s_auth_rule` VALUES ('158', '1', 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');
INSERT INTO `s_auth_rule` VALUES ('159', '1', 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', '');
INSERT INTO `s_auth_rule` VALUES ('160', '1', 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', '');
INSERT INTO `s_auth_rule` VALUES ('161', '1', 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');
INSERT INTO `s_auth_rule` VALUES ('162', '1', 'shop', 'admin_url', 'shop/AdminGoods/index', '', '商品管理', '');
INSERT INTO `s_auth_rule` VALUES ('163', '1', 'shop', 'admin_url', 'shop/AdminGoodsType/index', '', '分类管理', '');
INSERT INTO `s_auth_rule` VALUES ('164', '1', 'shop', 'admin_url', 'shop/AdminIndex/default', '', '商品管理', '');

-- ----------------------------
-- Table structure for `s_comment`
-- ----------------------------
DROP TABLE IF EXISTS `s_comment`;
CREATE TABLE `s_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:已审核,0:未审核',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `table_name` varchar(64) NOT NULL DEFAULT '' COMMENT '评论内容所在表，不带表前缀',
  `full_name` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者昵称',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者邮箱',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  `url` text COMMENT '原文地址',
  `content` text COMMENT '评论内容',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`object_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parent_id`),
  KEY `table_id_status` (`table_name`,`object_id`,`status`),
  KEY `createtime` (`create_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of s_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `s_goods`
-- ----------------------------
DROP TABLE IF EXISTS `s_goods`;
CREATE TABLE `s_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '洒类型id',
  `name` varchar(50) NOT NULL DEFAULT '洒' COMMENT '洒名',
  `description` text COMMENT '洒的描述',
  `img_url` varchar(255) NOT NULL COMMENT '封面图片',
  `jhj` decimal(10,0) unsigned NOT NULL DEFAULT '0' COMMENT '进货价',
  `shj` decimal(10,0) unsigned NOT NULL DEFAULT '0' COMMENT '售货价',
  `guige` varchar(64) NOT NULL DEFAULT '500ml' COMMENT '洒的规格',
  `kucun` int(10) unsigned NOT NULL DEFAULT '50' COMMENT '库存',
  `is_sell` int(2) NOT NULL DEFAULT '1' COMMENT '是否上架,1上架  0不上架',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of s_goods
-- ----------------------------
INSERT INTO `s_goods` VALUES ('1', '2', '人头马', '&lt;p&gt;1695年，Rémy Martin 出生于法国Charente地区Rouillac镇附近的一个葡萄种植与酿酒家庭，长大后与其父亲在家族葡萄庄园里工作。当时法国国王&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E8%B7%AF%E6%98%93%E5%8D%81%E5%9B%9B/15294&quot; data-lemmaid=&quot;15294&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;路易十四&lt;/a&gt;在位已50多年，而英国国王William of Orange 则统治着荷兰、英国（以及美洲殖民地）。年少的Rémy Martin 所照料的葡萄专用于蒸馏制作&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E7%99%BD%E5%85%B0%E5%9C%B0/1485&quot; data-lemmaid=&quot;1485&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;白兰地&lt;/a&gt;，主要销往德国和英国两大市场，当时德国人称之为brandewijn，英国人则称之为烧酒。&lt;/p&gt;&lt;p&gt;Rémy Martin于1724年成婚，正值家业兴旺发达，于是便想寻求壮大发展。由此而&lt;/p&gt;&lt;p&gt;&lt;a class=&quot;image-link&quot; nslog-type=&quot;9317&quot; href=&quot;https://baike.baidu.com/pic/%E4%BA%BA%E5%A4%B4%E9%A9%AC/924082/0/9864a231c4c9dae65fdf0e5d?fr=lemma&amp;ct=single&quot; target=&quot;_blank&quot; title=&quot;雷米·马丁三世&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none; display: block; width: 73px; height: 104px;&quot;&gt;&lt;img class=&quot;&quot; src=&quot;https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=ac32ed755bb5c9ea66f304e1e538b622/b8389b504fc2d5621d9c0b93e71190ef76c66c3c.jpg&quot; alt=&quot;雷米·马丁三世&quot; style=&quot;border: 0px; display: block; margin: 0px auto; width: 73px; height: 104px;&quot;/&gt;&lt;/a&gt;&lt;span class=&quot;description&quot; style=&quot;display: block; color: rgb(85, 85, 85); font-size: 12px; text-indent: 0px; font-family: 宋体; word-wrap: break-word; word-break: break-all; line-height: 15px; padding: 8px 7px; min-height: 12px; border-top: 1px solid rgb(224, 224, 224);&quot;&gt;雷米·马丁三世&lt;/span&gt;&lt;/p&gt;&lt;p&gt;成立了经营葡萄种植和酿造白兰地的Rémy Martin公司。在当今的全球四大白兰地品牌中，唯有人头马是由当地科涅克人所创建，其他三家均为外国酒商所创建。&lt;/p&gt;&lt;p&gt;在四大白兰地酒公司中，人头马公司也是唯一自己种植葡萄的公司。身为谨慎而富有想像力的商人，Rémy Martin脚踏实地地扩大其葡萄庄园，同时贮存大量生命之水’让其陈酿。他年满64岁时，德高望重，准备退休之际，恰逢其子皮埃尔因病去世。Rémy Martin 只好放弃享受轻松晚年的机会，又继续工作了15个年头，直至皮埃尔的儿子Rémy II 成年，于1773年接班。&lt;/p&gt;&lt;p&gt;人头马第二代传人继承祖父根基牢固的祖业，领导公司顺利渡过法国大革命以及继之尔来的动荡岁月。他颇具敏锐的政治头脑，总是善于站在胜利者的一边，其子人头马第三代传人继承了其资产丰厚的产业。&lt;/p&gt;&lt;p&gt;1850年，人头马第三代传人之子Paul-Emile大胆有为，使公司更上一层楼，尽管如同酿造干邑酒，其效果并非是立竿见影。当时人们在Jarnac附近的路易十三时代的一个古战场上，偶然发现了一个文艺复兴时期&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%B7%B4%E6%B4%9B%E5%85%8B%E9%A3%8E%E6%A0%BC&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;巴洛克风格&lt;/a&gt;的酒瓶，上面刻有皇家百合花饰纹。考虑到其商业价值，Paul-Emile买下了这只酒瓶，并申请了复制专利。&lt;/p&gt;&lt;p&gt;1870年，Paul-Emile又想出绝招，设想将人马星座作为公司的标志。1874年，他将&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E4%BA%BA%E9%A9%AC%E6%98%9F%E5%BA%A7&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;人马星座&lt;/a&gt;标志正式注册为公司的商标。一年之后， Paul-Emile便与世长辞，享年65岁。&lt;/p&gt;&lt;p&gt;&lt;a class=&quot;image-link&quot; nslog-type=&quot;9317&quot; href=&quot;https://baike.baidu.com/pic/%E4%BA%BA%E5%A4%B4%E9%A9%AC/924082/0/18d8bc3eb13533faf5b9905aaad3fd1f41345bb2?fr=lemma&amp;ct=single&quot; target=&quot;_blank&quot; title=&quot;人头马1898&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none; display: block; width: 220px; height: 220px;&quot;&gt;&lt;img class=&quot;&quot; src=&quot;https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=560d8e4a79ec54e745ec1d1c89389bfd/18d8bc3eb13533faf5b9905aaad3fd1f41345bb2.jpg&quot; alt=&quot;人头马1898&quot; style=&quot;border: 0px; display: block; margin: 0px auto; width: 220px; height: 220px;&quot;/&gt;&lt;/a&gt;&lt;span class=&quot;description&quot; style=&quot;display: block; color: rgb(85, 85, 85); font-size: 12px; text-indent: 0px; font-family: 宋体; word-wrap: break-word; word-break: break-all; line-height: 15px; padding: 8px 7px; min-height: 12px; border-top: 1px solid rgb(224, 224, 224);&quot;&gt;人头马1898&lt;/span&gt;&lt;/p&gt;&lt;p&gt;当年刚满22岁的Paul Rémy Martin，血气方刚，筹躅满志地从其父手中继承了兴旺发达的家业。然而不幸当时发生了一场天灾：一种叫作&lt;em&gt;phylloxera&lt;/em&gt;的小型昆虫摧毁了大片葡萄园。1880年， Charente地区处处可见枯死的葡萄藤，惨不忍睹。葡萄种植者和酒商纷纷破产。但Paul却似乎很平静地度过了这场危机，依然在其奢华的城堡挥霍大量钱财招待嘉宾。&lt;/p&gt;&lt;p&gt;由于人头马公司财力雄壮，有幸得以顺利度过难关，并在Paul的支持鼓励之下，将人头马品牌打入了德国、俄罗斯、&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%8C%97%E5%8C%BA&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;北区&lt;/a&gt;、美国以及澳洲市场。但在繁荣的表面之下，公司每况愈下。1910年，银行要求其进行巨额贷款。唯有注入大量资本才能挽回局面。&lt;/p&gt;&lt;p&gt;此时André Renaud出面向公司提供资金，并成为人头马公司Emile Rémy Martin &amp;amp; Cie的合伙人。André Renaud的专业是律师，出身于富有的葡萄种植商家庭，品性聪颖敏锐。他深知人头马已以其高品质的干邑闻名于世，若想自我保护，只能靠国家颁发法令，规定在一定地理地带合法生产干邑。即十年之后的源产地命名（&lt;em&gt;Appellation d’Origine Contrôlée&lt;/em&gt;&amp;nbsp;[AOC])。&lt;/p&gt;&lt;p&gt;Renaud在十四年之内一直是一名默默无闻的合伙人， 1918年，他与大香槟区的贮存有大量陈酿 ‘生命之水’的酒商之女Marie Frapin 联姻，此后便为公司的繁荣发展作出突出贡献。&lt;/p&gt;&lt;p&gt;1924年Paul去世之后，André Renaud购买了其遗霜的份额，从而开始一个新纪元。André Renaud设想全盘改革公司，不过和所有科涅克人一样，他将以谨慎、循序渐进的方式去操作。人们戏称其为&lt;em&gt;cagouillards&lt;/em&gt;（蜗牛），也不无道理。&lt;/p&gt;&lt;p&gt;他深信，绝佳的&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E5%B9%B2%E9%82%91&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;干邑&lt;/a&gt;不仅仅取决于其存放的方式，更取决于其产区。 ‘生命之水’的特殊芳香来自土壤的独特质地，而且随着酒龄增长会变得浓郁香醇。若无原有的芳香，陈酿时间再长也无济于事。最醇厚的 ‘生命之水’来自1909年确定的6个干邑产区的中心产区：大香槟区和小香槟区。为此，人头马决定仅选用这两个产区的 ‘生命之水’来酿制其干邑酒。&lt;/p&gt;&lt;p&gt;人头马公司的总裁今为DominiqueHériard Dubreuil女士，为法国大公司中屈指可数的女总裁。Dominique Hériard Dubreuil女士是20年前已退休的André Hériard Dubreuil先生之女。时至今日，人头马公司继续发展壮大，通过收购其他一些公司，组成现今的R Rémy CointreauGroup人头马君度集团公司。Dominique Hériard Dubreuil女士继承其父亲的风格，率领公司脚踏实地向前发展。&lt;/p&gt;&lt;p&gt;&lt;a style=&quot;color: rgb(19, 110, 194); position: absolute; top: -50px;&quot; name=&quot;1_2&quot;&gt;&lt;/a&gt;&lt;a style=&quot;color: rgb(19, 110, 194); position: absolute; top: -50px;&quot; name=&quot;sub50716_1_2&quot;&gt;&lt;/a&gt;&lt;a style=&quot;color: rgb(19, 110, 194); position: absolute; top: -50px;&quot; name=&quot;产品发展&quot;&gt;&lt;/a&gt;&lt;a style=&quot;color: rgb(19, 110, 194); position: absolute; top: -50px;&quot; name=&quot;1-2&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;h3 class=&quot;title-text&quot; style=&quot;margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;&quot;&gt;产品发展&lt;/h3&gt;&lt;p&gt;1927年，第一瓶&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/V.S.O.P&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;V.S.O.P&lt;/a&gt;（意为绝老佳酿）干邑面世，以55%的大香槟区葡萄酒和45%的小香槟区葡萄酒混合酿制而成。至今仍按此比例酿制。十九世纪30年代初，人头马V.S.O.P干邑风靡巴黎的高级酒店以及东亚一些地区。&lt;/p&gt;&lt;p&gt;&lt;a class=&quot;image-link&quot; nslog-type=&quot;9317&quot; href=&quot;https://baike.baidu.com/pic/%E4%BA%BA%E5%A4%B4%E9%A9%AC/924082/0/0b55b319ebc4b7458626b462cdfc1e178a821517?fr=lemma&amp;ct=single&quot; target=&quot;_blank&quot; title=&quot;人头马产品全系列&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none; display: block; width: 220px; height: 220px;&quot;&gt;&lt;img class=&quot;&quot; src=&quot;https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=0672ca479045d688a702b5a694c37dab/0b55b319ebc4b7458626b462cdfc1e178a821517.jpg&quot; alt=&quot;人头马产品全系列&quot; style=&quot;border: 0px; display: block; margin: 0px auto; width: 220px; height: 220px;&quot;/&gt;&lt;/a&gt;&lt;span class=&quot;description&quot; style=&quot;display: block; color: rgb(85, 85, 85); font-size: 12px; text-indent: 0px; font-family: 宋体; word-wrap: break-word; word-break: break-all; line-height: 15px; padding: 8px 7px; min-height: 12px; border-top: 1px solid rgb(224, 224, 224);&quot;&gt;人头马产品全系列&lt;/span&gt;&lt;/p&gt;&lt;p&gt;二次大战德军占领期间，干邑酒的运气颇佳，当时的德国指挥官是在干邑地区长大并曾就读于当地的中学。他赞同葡萄酒和陈酿在战后将会成为价值宝贵的资产。尽管如此，德国人还是带走了上万瓶酒：据说在1940年4个月的销售量就相当于两年的销售量。&lt;/p&gt;&lt;p&gt;但干邑公司均得以幸存下来，人头马公司当时十分欢迎能将其产品打入全球版图的人。此时出身于干邑酒商家庭的André Hériard Dubreuil于1942年娶了Renaud的长女Anne-Marie为妻。同其岳父一样，他也很有远见，并以审慎稳健的方式向前发展。&lt;/p&gt;&lt;p&gt;他们联合作出一个关键性的决定：将战后的出口业务集中在V.S.O.P干邑上，当时V.S.O.P干邑在市场上的销售比例甚微。尽管该酒相对其竞争对手的产品价格偏高，但凭其独有的品味和品质将成为未来市场的高级酒品。两年之内，该酒的销售量增至6万箱，发展非常快。1965年Renaud 去世之后，André Hériard Dubreuil成为公司总裁，人头马干邑公司此时已因其高质的酒品而在全球赫赫有名，年销售量已超过30万箱。&lt;a class=&quot;lemma-album layout-right nslog:10000206&quot; title=&quot;人头马图片欣赏&quot; href=&quot;https://baike.baidu.com/pic/%E4%BA%BA%E5%A4%B4%E9%A9%AC/924082/39288/63d9f2d3572c11df46aebd57612762d0f703c243?fr=lemma&amp;ct=cover&quot; target=&quot;_blank&quot; nslog-type=&quot;10000206&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none; display: block; width: 222px; border-bottom: 0px; margin: 10px 0px; position: relative; float: right; clear: right;&quot;&gt;&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&lt;a class=&quot;lemma-album layout-right nslog:10000206&quot; title=&quot;人头马图片欣赏&quot; href=&quot;https://baike.baidu.com/pic/%E4%BA%BA%E5%A4%B4%E9%A9%AC/924082/39288/63d9f2d3572c11df46aebd57612762d0f703c243?fr=lemma&amp;ct=cover&quot; target=&quot;_blank&quot; nslog-type=&quot;10000206&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none; display: block; width: 222px; border-bottom: 0px; margin: 10px 0px; position: relative; float: right; clear: right;&quot;&gt;&lt;img class=&quot;picture&quot; alt=&quot;人头马图片欣赏&quot; src=&quot;https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=97b2c072adc379317968812bdbc4b784/63d9f2d3572c11df46aebd57612762d0f703c243.jpg&quot; style=&quot;border: 0px; width: 220px; height: 220px; position: absolute; display: block;&quot;/&gt;&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&lt;a class=&quot;lemma-album layout-right nslog:10000206&quot; title=&quot;人头马图片欣赏&quot; href=&quot;https://baike.baidu.com/pic/%E4%BA%BA%E5%A4%B4%E9%A9%AC/924082/39288/63d9f2d3572c11df46aebd57612762d0f703c243?fr=lemma&amp;ct=cover&quot; target=&quot;_blank&quot; nslog-type=&quot;10000206&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none; display: block; width: 222px; border-bottom: 0px; margin: 10px 0px; position: relative; float: right; clear: right;&quot;&gt;人头马图片欣赏&lt;span class=&quot;number&quot; style=&quot;display: inline; color: gray;&quot;&gt;(16张)&lt;/span&gt;&lt;/a&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;&lt;p&gt;Hériard Dubreuil先生很快就成名，他高瞻远瞩预见到干邑酒将供不应求，认识到如果干邑公司继续像从前那样将‘生命之水’的价格任意定得很低，将不能刺激葡萄种植者扩大葡萄种植。他同时也希望人头马在将来能保持其高品质、品味水平。为此，他想出了一个办法，即在人头马和葡萄种植者之间签订长期合同，进行严格质量检查，并提前数年确定公平的价格。此举在当时整个行业引起一场骚动。酒商惧怕自己失去一定权利，而葡萄种植者则要求保证他们不会失去自身的独立性。而今，这种做法已为大部份干邑酒公司所采用。人头马公司同1800个葡萄种植者建立了合作关系。&lt;/p&gt;&lt;p&gt;1972年,V.S.O.P干邑以其新型的&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E7%A3%A8%E7%A0%82%E7%8E%BB%E7%92%83&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;磨砂玻璃&lt;/a&gt;酒瓶震惊全球，在美国以及远东，尤其是35岁以下年龄人群中几乎成为崇拜偶像。其出口量在1974年至1982年之间几乎增长了四倍。人头马V.S.O.P至今仍为行业领导产品，并被视为评定同类干邑产品的标杆。&lt;/p&gt;&lt;p&gt;&lt;a class=&quot;image-link&quot; nslog-type=&quot;9317&quot; href=&quot;https://baike.baidu.com/pic/%E4%BA%BA%E5%A4%B4%E9%A9%AC/924082/0/7d9893105c733042203f2e7a?fr=lemma&amp;ct=single&quot; target=&quot;_blank&quot; title=&quot;人头马&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none; display: block; width: 218px; height: 220px;&quot;&gt;&lt;img class=&quot;&quot; src=&quot;https://gss1.bdstatic.com/-vo3dSag_xI4khGkpoWK1HF6hhy/baike/s%3D220/sign=60f75cb8b2fb43161e1f7d7810a54642/faf2b2119313b07e971a6c7b0cd7912397dd8c19.jpg&quot; alt=&quot;人头马&quot; style=&quot;border: 0px; display: block; margin: 0px auto; width: 218px; height: 220px;&quot;/&gt;&lt;/a&gt;&lt;span class=&quot;description&quot; style=&quot;display: block; color: rgb(85, 85, 85); font-size: 12px; text-indent: 0px; font-family: 宋体; word-wrap: break-word; word-break: break-all; line-height: 15px; padding: 8px 7px; min-height: 12px; border-top: 1px solid rgb(224, 224, 224);&quot;&gt;人头马&lt;/span&gt;&lt;/p&gt;&lt;p&gt;与此同时，市场上对陈酿干邑的需求越来越多，为了满足市场的需求，人头马公司创制出了更高级别的特优香槟干邑人头马天醇X.O。&lt;/p&gt;&lt;p&gt;1985年，人头马CLUB进入亚洲市场，八角型酒瓶线条简洁、棱角分明，彰显着成熟、专注的真男人气质。&lt;/p&gt;&lt;p&gt;2005年，人头马家族与2/3的大、小香槟区葡萄种植者签订合作协议，特优香槟干邑联盟诞生。&lt;/p&gt;&lt;p&gt;2007年，人头马推出“心中干邑，干邑中心”的传播策略，再次确定了公司坚持生产特优香槟干邑的战略。同年，人头马首席酿酒师皮埃雷特·特里谢 (Pierrette Trichet) 根据保尔·雷米·马丁的配方，调配出人头马1898绝世佳酿。2011年，人头马针对中国市场特别推出了人头马诚印，彰显“无装饰的诚意”。2012年，人头马顶级系列的奢华产品，干邑王冠上的旷世之宝—人头马禧钻上市。&lt;/p&gt;&lt;p&gt;2012年人头马V.S.O.P携手亚洲舞后--蔡依林，完美呈献了人头马V.S.O.P“舞动心极限”限量版。瓶身上勾勒出了亚洲舞后蔡依林的动感舞姿。&lt;/p&gt;&lt;p&gt;2013年人头马V.S.O.P携手&lt;a target=&quot;_blank&quot; href=&quot;https://baike.baidu.com/item/%E8%94%A1%E4%BE%9D%E6%9E%97&quot; style=&quot;color: rgb(19, 110, 194); text-decoration-line: none;&quot;&gt;蔡依林&lt;/a&gt;激情呈献“炫舞心极限”限量版。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'http://bs.com/upload/goods/20171206\\1b8d21726fe8c6cb3538adc6c9171a1a.jpg', '68', '199', '500ml', '50', '1', '1512547237', '1512547237', null);
INSERT INTO `s_goods` VALUES ('2', '2', '贵州茅台【17年限量】', '&lt;p&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;strong&gt;温馨提示 ：由于包装升级，产品瓶身和外盒的产品简介中（以本地优质糯高粱）此句话有的包装印刷是“以本地优质糯高粱”有的印刷是“以优质糯高粱”以实际发货为准！&lt;/strong&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://img06.jiuxian.com/bill/2015/0901/6ff9bfeeab5146539a0c1cb099622e44.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img src=&quot;http://img06.jiuxian.com/bill/2015/0901/de6a0a2bd88d4f13a66132aa51fd67d0.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img src=&quot;http://img06.jiuxian.com/bill/2017/0314/4a1f0100e5d04e8187f320a36359631f.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img src=&quot;http://img06.jiuxian.com/bill/2017/0314/b5e438acab814cb6b7c6f13fa67f14b7.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'http://bs.com/upload/goods/20171207\\70eb1ec9bcfb448dcd01739ec77898f7.jpg', '999', '1288', '500ml', '50', '1', '1512614244', '1512614244', null);
INSERT INTO `s_goods` VALUES ('3', '2', '38°茅台集团贵州囍酒500ml（2003-2004年）', '&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;strong&gt;温馨提示：由于老酒年代久远，存放时间较长，包装微有瑕疵，介意者慎拍，同时本款酒因当年审核不严格，导致包装印刷有部分错误（页面附酒厂说明），酒水质量无任何问题，请放心饮用&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/90d29c969c57422ea4e6b08bb324432d.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/c1c90cad96664a24bb97fc3640d84e09.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/ebfc86a1a3024368bdf5bcae54f694bf.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/91e2a55166214199a8f86fc508d5e565.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/dab5331f8d1f4b9d8d5799a762b2e403.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/6cc845fa1dc145618b36d7cfb184684f.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/449a9d0e93504c8f8a78d189acf00c01.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/15a76b6d4e684ffab5069803e6677674.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2017/0313/3e229803ced5403384c39b6a273d72d7.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/22b743dabdce4193a0ee394a5e3c79dc.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/d74e794190704e86b511c748aa42fbda.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/71370d994855412eb38f2058db520e47.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/fee4f69c69e940cd9e9d0b5df6224e9a.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/5e11ca01c7a74a068513a5f7cd25bff5.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/7fdd430c44d74997a5977a38e78cbd7c.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/bfe41bd56d0b43f5ae2f63c315e4a273.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1230/6fdb06c88702420a929661a5fc0dd907.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/a8e3b941dbd743f2836d2ba0f8df38f0.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/032d0cc353bd4363a551865d17eaee85.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/fc42785d141440f7939408aa7915e56d.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/6d106852d58d4772b7688ece8fae028c.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/fa9288a236144ca885b6991b17e222f9.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/0ead6b50935a467b819f5ceb016ee222.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/3d6168f42eff4fd9b32cd9950edece34.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/73e37b92a6a64d74bbbd6209c7e91b20.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/07cadafa8b7f461c9208fbcb7ce7e035.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2016/0114/194fc4e72dbe4f9784071da471bd7699.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2016/0114/24fcdf31a58a4e01a7e2e258fb2160ed.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2016/0114/ed24231222a64f9f8e4b6b4344286210.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/7aa647206df04fe6a0770ffb02b16d48.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/d5a1e55f047348019078b0a59772b0ee.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/5a7a4a7833094f8fb5c4ccc8172b035e.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/13b8f989782b425ba7f3f318844fb089.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2015/1229/108feef774ba45838db4ad773836724a.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2016/0622/da77e2b07839448ab50f45c5dd6d4960.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2016/0622/2ef7eb372c804231a5e841f88c67512c.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2016/0622/67aa4739b657419bbfbcf2708540236a.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2016/0622/bd40bc2705164e5281e4645b53dbdffd.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2016/0622/7a98d3e8c46640f38bdd8bee2d7c4b95.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2016/0622/f56ec9910e3a46d78002d7f9a54d191f.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2016/0622/378e2e1d216f431ca85aeb79fd9c936f.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2016/0622/336d518eb6a34d449810e08663f8a29d.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2016/0622/b4ff76c9bc04440386385cf4c5b80544.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/bill/2016/0622/cf41ed122097438f882d8d1e32b78354.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'http://bs.com/upload/goods/20171207\\7e88268bf3b9db1f66374710ee4df110.jpg', '99', '128', '500ml', '50', '1', '1512614468', '1512614468', null);
INSERT INTO `s_goods` VALUES ('4', '2', '52°贵州茅台集团白金原浆酒(VIP品鉴)500ml', '&lt;h3 style=&quot;padding: 0px; margin: 0px 0px 10px; height: 24px; line-height: 24px; font-weight: normal; color: rgb(102, 102, 102); font-size: 16px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;display: inline-block; float: left; padding-left: 6px;&quot;&gt;商品特点&lt;/span&gt;&lt;/h3&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/1128/5939e00d6179406184636956dcab1e19.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 452px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/1128/edc642cf77fd40ce8f25664b80aaf47d.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 500px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/1128/e9c65c00b94346e995fddea66348d1c0.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 752px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/1128/c3829a68971c47ffbf64850b63ed4aef.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 555px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/1128/336f52e267a64cbca60135bdf22c53f0.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 261px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/1128/edbb3818bb1445d785974159b2ed38f3.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 785px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/1128/0866457fb4a3456eb01c9f124c71e020.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 642px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/1128/018d7a337a944b67aaa8a8f694ac9bc4.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 456px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/1128/06c061f2b6b24d15930a8683fbbf3ca2.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 459px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/1128/2839ae4aaebe4aef9db2e4327003d645.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 437px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/1128/f0ec44f926534e6fb59bb858d71e75be.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 438px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/1128/54058a6cd9b7430b8e17867d8b8887ad.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 662px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/1128/5ec10ab719304c52b3bd9fd18eb12133.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 720px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/1128/faaa9f0442524cd6b2812c34608ada33.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 519px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/1128/1cec2c85d376408ebf2cb63e998e2efd.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 372px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/1128/2546a8220c7b47b18f1100f0d0af169b.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 612px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/1128/724a846865db44b38b563531358d3c23.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 736px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/1128/c8e699a0fa3641ca8fe5f89a471d889f.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 501px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/1128/9a64032235594984b3f0fc1bc12d9da7.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 160px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/1128/290cd26148a54556ae08101abfee5141.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 258px; width: 750px;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'http://bs.com/upload/goods/20171207\\d248f790c6c6eba48d1de7302a3b0d81.jpg', '188', '388', '500ml', '50', '1', '1512614729', '1512614729', null);
INSERT INTO `s_goods` VALUES ('5', '2', '42°茅台集团白金原浆酒(5A)绵柔（浓香型白酒）', '&lt;h3 style=&quot;padding: 0px; margin: 0px 0px 10px; height: 24px; line-height: 24px; font-weight: normal; color: rgb(102, 102, 102); font-size: 16px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;display: inline-block; float: left; padding-left: 6px;&quot;&gt;商品特点&lt;/span&gt;&lt;/h3&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/1205/ddde897ed7ad48be9d5e09da38cfb21d.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 452px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/1205/984f6cec9cc5447d8bb640d89927781b.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 500px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/1205/9d79d136dcd14fa0a921eeda030f139e.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 752px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/1205/3819927ecdb247e88c15c9adb77b7bf5.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 555px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/1205/3f7864ae47364f4ba2db16889a09863f.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 261px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/1205/fda29bf81511480897dc5b1a83d76304.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 785px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/1205/4095d30e9170482d80675d3c86fccc00.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 642px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/1205/cd5780680dd34809bf33797b276d236b.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 477px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/1128/54058a6cd9b7430b8e17867d8b8887ad.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 662px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/1128/faaa9f0442524cd6b2812c34608ada33.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 519px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/1128/1cec2c85d376408ebf2cb63e998e2efd.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 372px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/1128/2546a8220c7b47b18f1100f0d0af169b.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 612px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/1128/724a846865db44b38b563531358d3c23.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 736px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/1128/c8e699a0fa3641ca8fe5f89a471d889f.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 501px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/1128/9a64032235594984b3f0fc1bc12d9da7.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 160px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/1128/290cd26148a54556ae08101abfee5141.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 258px; width: 750px;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'http://bs.com/upload/goods/20171207\\0a453694d4b122d9877a5eff8bec1e84.jpg', '99', '168', '500ml', '50', '1', '1512614832', '1512614832', null);
INSERT INTO `s_goods` VALUES ('6', '2', '52°茅台集团白金原浆酒V90(龙腾四海)500ml（礼盒）', '&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/0901/08ef1521ef1044e0a382a54f12336e17.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/0901/3770ea9e33a540c7a57c2c37dbffc0f6.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/0901/11bbeccfa387402d90f1a8c81525e723.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/0901/2231d4fdccd54c5a93d9c290033d64b6.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/0901/125a1ac2d15e4aafb958c1c72ad5c3a9.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/0901/fa28b3c0fe64481492ae6fcd2cd0834c.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); height: 609px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img10.jiuxian.com/brandlogo/2017/0901/1da1b4940f71439fb653842b5635d8b4.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img10.jiuxian.com/brandlogo/2017/0901/5bb88f88b7d042098271b046bf14f785.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/0901/137dc5309cbd41e5ba79fc288241ee69.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/0901/977c0ba0e41d42209dc5f46fa96adb57.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/0901/6d9c8d6c8c1d430aae217a072d4106ea.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); height: 546px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/0901/fdc6930c5439421c936aa5536370660e.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img10.jiuxian.com/brandlogo/2017/0901/32bc6e6e974445fd8c5a27462b1029cc.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); height: 648px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/0901/af2a94a0ca87409abbf0bc663cd13ed7.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); height: 768px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/0901/5e375acda4df48aab647fe8a520d5486.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/0901/4d880efcd2ae4131b1bd1e214f400cf9.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255); height: 267px; width: 790px;&quot;/&gt;&lt;/p&gt;', 'http://bs.com/upload/goods/20171207\\4923d53747343f1e6b58d6f74288d890.jpg', '598', '998', '500ml', '50', '1', '1512614901', '1512614901', null);
INSERT INTO `s_goods` VALUES ('7', '2', '52º贵州茅台V80封藏原浆酒500ml', '&lt;h3 style=&quot;padding: 0px; margin: 0px 0px 10px; height: 24px; line-height: 24px; font-weight: normal; color: rgb(102, 102, 102); font-size: 16px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;display: inline-block; float: left; padding-left: 6px;&quot;&gt;商品特点&lt;/span&gt;&lt;/h3&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/0412/b462d415b8ed40e7b2b8151d74e47e0d.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 513px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/0412/d0bf335890da4cd59eca6680acc663c8.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 675px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/0412/6475e5495bd0462ea0e89cf4694cc9f5.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 608px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/0412/e6dbe97e19144001b214ffea8db0f99a.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 748px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/0412/3c313fbc777642759e06ba1f3b995855.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 364px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/0412/9ec120b4882f432788e6b65cdf9ba9d1.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 824px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/0412/132dd94c82da41d5825a6aea9dd55f0b.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 800px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/0412/c63a4f4022a24518baee59f29f008ef6.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 1272px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/0412/b87b8dcd0e444632b058982420ce07f2.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 732px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/0412/24668de997c3495ca439f4f51bbb058b.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 908px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/0412/a78243d46fcb4e7db1678ac8cd1c797b.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 820px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/0412/4ff0d027f7c94c6981439c4446e7bb78.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 748px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/0412/160431c567a9491f8207f4aaa8335102.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 672px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/0412/7c2d80c8edde40ff8e6daeb5260ed78c.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 1204px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/0412/a93d7e29c21848808c3cc56119074076.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 968px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/0412/2f346f88c72d4e6d816ce5bef216b367.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 960px; width: 790px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/0412/1eaa18b647984dbb9dd9da7c47d1d575.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; float: left; height: 830px; width: 790px;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'http://bs.com/upload/goods/20171207\\37fecc0a2850eda46165795e3cfe24c4.jpg', '299', '499', '500ml', '50', '1', '1512614958', '1512614958', null);
INSERT INTO `s_goods` VALUES ('8', '2', '52°茅台集团白金原浆酒VIP封坛500ml 整箱装 (婚宴喜酒)', '&lt;h3 style=&quot;padding: 0px; margin: 0px 0px 10px; height: 24px; line-height: 24px; font-weight: normal; color: rgb(102, 102, 102); font-size: 16px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;display: inline-block; float: left; padding-left: 6px;&quot;&gt;商品特点&lt;/span&gt;&lt;/h3&gt;&lt;p style=&quot;padding: 0px; margin-top: 0px; margin-bottom: 0px;&quot;&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/0627/988b903ad1bc4fd099701c94b544c99c.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/0627/0e5c684e663f45d587d07ea47ed1fb92.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 392px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img08.jiuxian.com/brandlogo/2017/0627/66e331ede2a643a8ad266a3f5aa49499.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 610px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img07.jiuxian.com/brandlogo/2017/0627/6fa4383407a041668a37a8f8d547d4a7.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 778px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/0627/bbab766247bd4519a1695c806c8d5659.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 168px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/0627/73683af0244a4be0be2df70cbfaf8608.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 707px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/0627/97ae8d034ac84feb86fd73cec2d8d94e.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 164px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img09.jiuxian.com/brandlogo/2017/0627/bc613532f2f04057bb626ba4c62273a7.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 640px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/0627/061cbb40a61e416cb2369d0972c99539.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 750px; width: 750px;&quot;/&gt;&lt;img alt=&quot;&quot; src=&quot;http://img06.jiuxian.com/brandlogo/2017/0627/d1551c8a7427455aba9ac99f6abadd35.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; height: 564px; width: 750px;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'http://bs.com/upload/goods/20171207\\67902880dc4994da1450ce6bef045e73.jpg', '498', '698', '500ml', '50', '1', '1512615061', '1512615061', null);
INSERT INTO `s_goods` VALUES ('9', '2', '53°茅台王子酒500ml+景德镇青瓷酒具五件套', '&lt;p&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0902/fd77775cbaab4594bf6250c222f71090.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0902/faf48f2fc8bd462386b365734239c3ed.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0922/d0e4519ecbb64dafb733c3cc269fb27b.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0902/f93da27f2e8a4ff0b131521b67b524da.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0902/0d2ed3d26d9a44d5b460a96f031b1714.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0902/f8b73461062543c897b0905742be3df7.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0902/8ecc12689bd3403a9964f6e8abcadfa2.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0902/962255c7e8ec4a059570c973d4788194.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0902/34560222ce89494e815aa852c81f8f2c.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0902/2013e323ac9a4501be6aae7b5697660a.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0902/8db2a15f20584448bd1103b7603cc800.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0902/52aa0cd3a3514d7b9f366289d7bf2f88.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0902/df98eba08ec8414fbd0abe92a58aed47.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0902/b88e2c97c639446f8cde8fdd7daf1d39.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2015/0902/41f93b2ea9b544adbbfd4447da68c27c.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2017/0930/952d0a032fb24765a620de990e80d3f7.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2017/0930/0771b064658e4931b422b57089f675ba.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2017/0930/2ff0f5fa075443229a45930ebe94190c.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2017/0930/4f6f672c842f4bce8394057ae0b852f8.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2017/0930/72ada34fff584e73af6beca82679b246.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2017/0930/2fd3d35eb4144f2da6185561bb8d4a31.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2017/0930/25da77c30f884a19a581f7483d2ee40c.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;img src=&quot;http://img09.jiuxian.com/bill/2017/0930/4c3a6d0afaf34bc2ae2767c04573c25a.jpg&quot; style=&quot;border: 0px; vertical-align: bottom; color: rgb(102, 102, 102); font-family: Arial, Helvetica, sans-serif, 宋体; font-size: 12px; text-align: center; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'http://bs.com/upload/goods/20171207\\60e462ad6e28424de080ba51bc1f0eb1.jpg', '138', '198', '500ml', '50', '1', '1512615114', '1512615114', null);
INSERT INTO `s_goods` VALUES ('10', '2', '51°茅台汉酱酒500m', '&lt;h3 style=&quot;padding: 0px; margin: 0px 0px 10px; height: 24px; line-height: 24px; font-weight: normal; color: rgb(102, 102, 102); font-size: 16px; font-family: &amp;quot;Microsoft YaHei&amp;quot;; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;display: inline-block; float: left; padding-left: 6px;&quot;&gt;商品特点&lt;/span&gt;&lt;/h3&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(255, 0, 0);&quot;&gt;&lt;strong&gt;温馨提示：此款产品新旧包装更换中，随机发货，请以收到的实物为准！&lt;br/&gt;温馨提示：商品的具体生产日期，请已收到实际货物为准，给您带来的不便，敬请谅解。&lt;/strong&gt;&lt;/span&gt;&lt;br/&gt;&lt;br/&gt;&lt;br/&gt;&lt;br/&gt;&lt;br/&gt;&lt;img src=&quot;http://img07.jiuxian.com/2014/0215/020509df0c3245128557ebb9a4b2a5f3.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;br/&gt;&lt;img src=&quot;http://img07.jiuxian.com/2014/0215/da575957185144b695423dc6be051b9f.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;br/&gt;&lt;img src=&quot;http://img07.jiuxian.com/2014/0215/c0018b2bffaf48418b599377dd9ffcf1.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;br/&gt;&lt;img src=&quot;http://img07.jiuxian.com/2014/0215/095494f8cb334e1aba33ffb853124a4f.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;br/&gt;&lt;img src=&quot;http://img07.jiuxian.com/2014/0215/6e49070016d44d9988f5c65de825df15.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;br/&gt;&lt;img src=&quot;http://img07.jiuxian.com/2014/0215/2f7aabb6c26049b8800ee6ff52f98018.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;br/&gt;&lt;img src=&quot;http://img07.jiuxian.com/2014/0215/7a736cd09a8f4518aaaff26a17f78f24.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;br/&gt;&lt;img src=&quot;http://img07.jiuxian.com/2014/0215/58789eb6cb7e484da239157bc8ca43e1.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;img src=&quot;http://img07.jiuxian.com/2014/0215/35a21e82fef346899f4eb18cc0d61b2f.jpg&quot; style=&quot;border: 0px; vertical-align: bottom;&quot;/&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', 'http://bs.com/upload/goods/20171207\\680cac660683724a33fa0af16b9771f8.jpg', '298', '388', '500ml', '50', '1', '1512615205', '1512615205', null);

-- ----------------------------
-- Table structure for `s_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `s_goods_type`;
CREATE TABLE `s_goods_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '白洒' COMMENT '洒的类型',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of s_goods_type
-- ----------------------------
INSERT INTO `s_goods_type` VALUES ('2', '白酒', '1512547081', '1512547081', null);
INSERT INTO `s_goods_type` VALUES ('3', '葡萄洒', '1512547096', '1512547096', null);
INSERT INTO `s_goods_type` VALUES ('4', '啤酒', '1512547122', '1512547122', null);
INSERT INTO `s_goods_type` VALUES ('5', '洋酒', '1512613396', '1512613396', null);
INSERT INTO `s_goods_type` VALUES ('6', '保健洒', '1512613409', '1512613409', null);
INSERT INTO `s_goods_type` VALUES ('7', '黄洒', '1512613431', '1512613431', null);

-- ----------------------------
-- Table structure for `s_hook`
-- ----------------------------
DROP TABLE IF EXISTS `s_hook`;
CREATE TABLE `s_hook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子)',
  `once` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子表';

-- ----------------------------
-- Records of s_hook
-- ----------------------------
INSERT INTO `s_hook` VALUES ('1', '1', '0', '应用初始化', 'app_init', 'cmf', '应用初始化');
INSERT INTO `s_hook` VALUES ('2', '1', '0', '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `s_hook` VALUES ('3', '1', '0', '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `s_hook` VALUES ('4', '1', '0', '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `s_hook` VALUES ('5', '1', '0', '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `s_hook` VALUES ('6', '1', '0', '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `s_hook` VALUES ('7', '1', '0', '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `s_hook` VALUES ('8', '1', '0', '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `s_hook` VALUES ('9', '1', '0', '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `s_hook` VALUES ('10', '1', '0', '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `s_hook` VALUES ('11', '1', '1', '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `s_hook` VALUES ('12', '3', '0', '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `s_hook` VALUES ('13', '3', '0', '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `s_hook` VALUES ('14', '3', '0', '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `s_hook` VALUES ('15', '3', '0', '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `s_hook` VALUES ('16', '3', '0', '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `s_hook` VALUES ('17', '3', '0', '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `s_hook` VALUES ('18', '3', '0', '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `s_hook` VALUES ('19', '3', '0', '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `s_hook` VALUES ('20', '3', '0', '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `s_hook` VALUES ('21', '3', '0', '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `s_hook` VALUES ('22', '3', '1', '评论区', 'comment', '', '评论区');
INSERT INTO `s_hook` VALUES ('23', '3', '1', '留言区', 'guestbook', '', '留言区');
INSERT INTO `s_hook` VALUES ('24', '2', '0', '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `s_hook` VALUES ('25', '4', '0', '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `s_hook` VALUES ('26', '4', '0', '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `s_hook` VALUES ('27', '2', '0', '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `s_hook` VALUES ('28', '1', '1', '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `s_hook` VALUES ('29', '3', '0', '主要内容之后', 'after_content', '', '主要内容之后');
INSERT INTO `s_hook` VALUES ('30', '2', '0', '文章显示之前', 'portal_before_assign_article', 'portal', '文章显示之前');
INSERT INTO `s_hook` VALUES ('31', '2', '0', '后台文章保存之后', 'portal_admin_after_save_article', 'portal', '后台文章保存之后');

-- ----------------------------
-- Table structure for `s_hook_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `s_hook_plugin`;
CREATE TABLE `s_hook_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(30) NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='系统钩子插件表';

-- ----------------------------
-- Records of s_hook_plugin
-- ----------------------------
INSERT INTO `s_hook_plugin` VALUES ('10', '10000', '1', 'send_mobile_verification_code', 'MobileCodeDemo');

-- ----------------------------
-- Table structure for `s_link`
-- ----------------------------
DROP TABLE IF EXISTS `s_link`;
CREATE TABLE `s_link` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  PRIMARY KEY (`id`),
  KEY `link_visible` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='友情链接表';

-- ----------------------------
-- Records of s_link
-- ----------------------------
INSERT INTO `s_link` VALUES ('1', '1', '1', '8', 'thinkcmf官网', 'http://www.thinkcmf.com', 'ThinkCMF', '', '_blank', '');

-- ----------------------------
-- Table structure for `s_nav`
-- ----------------------------
DROP TABLE IF EXISTS `s_nav`;
CREATE TABLE `s_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_main` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否为主导航;1:是;0:不是',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '导航位置名称',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航位置表';

-- ----------------------------
-- Records of s_nav
-- ----------------------------
INSERT INTO `s_nav` VALUES ('1', '1', '主导航', '主导航');
INSERT INTO `s_nav` VALUES ('2', '0', '底部导航', '');

-- ----------------------------
-- Table structure for `s_nav_menu`
-- ----------------------------
DROP TABLE IF EXISTS `s_nav_menu`;
CREATE TABLE `s_nav_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nav_id` int(11) NOT NULL COMMENT '导航 id',
  `parent_id` int(11) NOT NULL COMMENT '父 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单名称',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '打开方式',
  `href` varchar(100) NOT NULL DEFAULT '' COMMENT '链接',
  `icon` varchar(20) NOT NULL DEFAULT '' COMMENT '图标',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='前台导航菜单表';

-- ----------------------------
-- Records of s_nav_menu
-- ----------------------------
INSERT INTO `s_nav_menu` VALUES ('1', '1', '0', '1', '0', '首页', '', 'home', '', '0-1');

-- ----------------------------
-- Table structure for `s_option`
-- ----------------------------
DROP TABLE IF EXISTS `s_option`;
CREATE TABLE `s_option` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '配置值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='全站配置表';

-- ----------------------------
-- Records of s_option
-- ----------------------------
INSERT INTO `s_option` VALUES ('7', '1', 'site_info', '{\"site_name\":\"ThinkCMF\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_title\":\"ThinkCMF\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\",\"site_seo_keywords\":\"ThinkCMF,php,\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6,cmf,cms,\\u7b80\\u7ea6\\u98ce, simplewind,framework\",\"site_seo_description\":\"ThinkCMF\\u662f\\u7b80\\u7ea6\\u98ce\\u7f51\\u7edc\\u79d1\\u6280\\u53d1\\u5e03\\u7684\\u4e00\\u6b3e\\u7528\\u4e8e\\u5feb\\u901f\\u5f00\\u53d1\\u7684\\u5185\\u5bb9\\u7ba1\\u7406\\u6846\\u67b6\"}');

-- ----------------------------
-- Table structure for `s_order`
-- ----------------------------
DROP TABLE IF EXISTS `s_order`;
CREATE TABLE `s_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `goods_id` bigint(20) NOT NULL,
  `goods_count` int(11) NOT NULL DEFAULT '1' COMMENT '购买数量',
  `order2_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '如果付款了，写入数据到order2',
  `is_pay` int(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否已付款 0没有 1有',
  `order_no` varchar(20) NOT NULL,
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`),
  KEY `order2_id` (`order2_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of s_order
-- ----------------------------
INSERT INTO `s_order` VALUES ('1', '8', '2', '1', '0', '0', 'No69513482371', '1512716092', '1512716092', null);
INSERT INTO `s_order` VALUES ('2', '8', '1', '1', '0', '0', 'No11734469924', '1512802891', '1512802891', null);
INSERT INTO `s_order` VALUES ('3', '8', '2', '1', '0', '0', 'No39486612182', '1513061289', '1513061289', null);
INSERT INTO `s_order` VALUES ('4', '8', '2', '1', '0', '0', 'No62749264133', '1513061936', '1513061936', null);
INSERT INTO `s_order` VALUES ('5', '8', '2', '1', '0', '0', 'No39899769915', '1513062010', '1513062010', null);
INSERT INTO `s_order` VALUES ('6', '8', '2', '1', '0', '0', 'No49563911515', '1513062396', '1513062396', null);
INSERT INTO `s_order` VALUES ('7', '8', '2', '1', '0', '0', 'No47311138976', '1513062433', '1513062433', null);
INSERT INTO `s_order` VALUES ('8', '8', '2', '1', '0', '0', 'No54951787563', '1513062506', '1513062506', null);
INSERT INTO `s_order` VALUES ('9', '8', '2', '1', '0', '0', 'No81832159193', '1513062525', '1513062525', null);
INSERT INTO `s_order` VALUES ('10', '8', '2', '1', '0', '0', 'No36599773587', '1513062560', '1513062560', null);

-- ----------------------------
-- Table structure for `s_order2`
-- ----------------------------
DROP TABLE IF EXISTS `s_order2`;
CREATE TABLE `s_order2` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pay_type_id` int(10) unsigned NOT NULL,
  `beizhu` text COMMENT '下单备注',
  `phone` bigint(20) NOT NULL,
  `kuaididanhao` varchar(255) NOT NULL DEFAULT '无' COMMENT '快递单号',
  `address_id` int(11) NOT NULL,
  `is_success` int(11) NOT NULL DEFAULT '0' COMMENT '是否成功 0是失败 1成功',
  `send_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `goods_count` int(11) NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `is_pay` int(11) NOT NULL DEFAULT '0' COMMENT '是否付款',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pay_type_id` (`pay_type_id`),
  KEY `address_id` (`address_id`),
  KEY `send_id` (`send_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of s_order2
-- ----------------------------
INSERT INTO `s_order2` VALUES ('5', '1', '', '15880630261', '', '2', '0', '1', '8', '2', '1', 'No47386633945', '1', '1513063583', '1513063583', null);
INSERT INTO `s_order2` VALUES ('4', '1', '', '15880630261', '', '2', '0', '1', '8', '2', '1', 'No98745579316', '0', '1513063197', '1513063197', null);
INSERT INTO `s_order2` VALUES ('8', '1', '', '15880630261', '', '1', '0', '1', '8', '2', '1', 'No22713838688', '1', '1513066295', '1513066295', null);
INSERT INTO `s_order2` VALUES ('7', '1', '', '15880630261', '', '1', '0', '1', '8', '2', '1', 'No27757551918', '1', '1513066231', '1513066231', null);

-- ----------------------------
-- Table structure for `s_pay_type`
-- ----------------------------
DROP TABLE IF EXISTS `s_pay_type`;
CREATE TABLE `s_pay_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pay_way` varchar(20) NOT NULL DEFAULT '无' COMMENT '支付类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of s_pay_type
-- ----------------------------
INSERT INTO `s_pay_type` VALUES ('1', '支付宝');
INSERT INTO `s_pay_type` VALUES ('2', '微信');
INSERT INTO `s_pay_type` VALUES ('3', '货到付款');

-- ----------------------------
-- Table structure for `s_plugin`
-- ----------------------------
DROP TABLE IF EXISTS `s_plugin`;
CREATE TABLE `s_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) NOT NULL COMMENT '插件描述',
  `config` text COMMENT '插件配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COMMENT='插件表';

-- ----------------------------
-- Records of s_plugin
-- ----------------------------
INSERT INTO `s_plugin` VALUES ('14', '1', '0', '1', '0', 'MobileCodeDemo', '手机验证码演示插件', '', '', 'ThinkCMF', '', '1.0', '手机验证码演示插件', '{\"account_sid\":\"\",\"auth_token\":\"\",\"app_id\":\"\",\"template_id\":\"\",\"expire_minute\":\"30\"}');

-- ----------------------------
-- Table structure for `s_portal_category`
-- ----------------------------
DROP TABLE IF EXISTS `s_portal_category`;
CREATE TABLE `s_portal_category` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类父id',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类文章数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `description` varchar(255) NOT NULL COMMENT '分类描述',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '分类层级关系路径',
  `seo_title` varchar(100) NOT NULL DEFAULT '',
  `seo_keywords` varchar(255) NOT NULL DEFAULT '',
  `seo_description` varchar(255) NOT NULL DEFAULT '',
  `list_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类列表模板',
  `one_tpl` varchar(50) NOT NULL DEFAULT '' COMMENT '分类文章页模板',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章分类表';

-- ----------------------------
-- Records of s_portal_category
-- ----------------------------

-- ----------------------------
-- Table structure for `s_portal_category_post`
-- ----------------------------
DROP TABLE IF EXISTS `s_portal_category_post`;
CREATE TABLE `s_portal_category_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `category_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 分类文章对应表';

-- ----------------------------
-- Records of s_portal_category_post
-- ----------------------------

-- ----------------------------
-- Table structure for `s_portal_post`
-- ----------------------------
DROP TABLE IF EXISTS `s_portal_post`;
CREATE TABLE `s_portal_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `post_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '类型,1:文章;2:页面',
  `post_format` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '内容格式;1:html;2:md',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '发表者用户id',
  `post_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:已发布;0:未发布;',
  `comment_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '评论状态;1:允许;0:不允许',
  `is_top` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶;1:置顶;0:不置顶',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_hits` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '查看数',
  `post_like` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `comment_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `published_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发布时间',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `post_title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'post标题',
  `post_keywords` varchar(150) NOT NULL DEFAULT '' COMMENT 'seo keywords',
  `post_excerpt` varchar(500) NOT NULL DEFAULT '' COMMENT 'post摘要',
  `post_source` varchar(150) NOT NULL DEFAULT '' COMMENT '转载文章的来源',
  `post_content` text COMMENT '文章内容',
  `post_content_filtered` text COMMENT '处理过的文章内容',
  `more` text COMMENT '扩展属性,如缩略图;格式为json',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`create_time`,`id`),
  KEY `post_parent` (`parent_id`),
  KEY `post_author` (`user_id`),
  KEY `post_date` (`create_time`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='portal应用 文章表';

-- ----------------------------
-- Records of s_portal_post
-- ----------------------------

-- ----------------------------
-- Table structure for `s_portal_tag`
-- ----------------------------
DROP TABLE IF EXISTS `s_portal_tag`;
CREATE TABLE `s_portal_tag` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布,0:不发布',
  `recommended` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否推荐;1:推荐;0:不推荐',
  `post_count` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签文章数',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标签名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='portal应用 文章标签表';

-- ----------------------------
-- Records of s_portal_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `s_portal_tag_post`
-- ----------------------------
DROP TABLE IF EXISTS `s_portal_tag_post`;
CREATE TABLE `s_portal_tag_post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '标签 id',
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '文章 id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:发布;0:不发布',
  PRIMARY KEY (`id`),
  KEY `term_taxonomy_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='portal应用 标签文章对应表';

-- ----------------------------
-- Records of s_portal_tag_post
-- ----------------------------

-- ----------------------------
-- Table structure for `s_recycle_bin`
-- ----------------------------
DROP TABLE IF EXISTS `s_recycle_bin`;
CREATE TABLE `s_recycle_bin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT '0' COMMENT '删除内容 id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `table_name` varchar(60) DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) DEFAULT '' COMMENT '删除内容名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT=' 回收站';

-- ----------------------------
-- Records of s_recycle_bin
-- ----------------------------

-- ----------------------------
-- Table structure for `s_role`
-- ----------------------------
DROP TABLE IF EXISTS `s_role`;
CREATE TABLE `s_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '父角色ID',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT '0' COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `parentId` (`parent_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
-- Records of s_role
-- ----------------------------
INSERT INTO `s_role` VALUES ('1', '0', '1', '1329633709', '1329633709', '0', '超级管理员', '拥有网站最高管理员权限！');
INSERT INTO `s_role` VALUES ('2', '0', '1', '1329633709', '1329633709', '0', '普通管理员', '权限由最高管理员分配！');

-- ----------------------------
-- Table structure for `s_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `s_role_user`;
CREATE TABLE `s_role_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '角色 id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色对应表';

-- ----------------------------
-- Records of s_role_user
-- ----------------------------

-- ----------------------------
-- Table structure for `s_route`
-- ----------------------------
DROP TABLE IF EXISTS `s_route`;
CREATE TABLE `s_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='url路由表';

-- ----------------------------
-- Records of s_route
-- ----------------------------

-- ----------------------------
-- Table structure for `s_send_type`
-- ----------------------------
DROP TABLE IF EXISTS `s_send_type`;
CREATE TABLE `s_send_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_name` varchar(255) NOT NULL DEFAULT '无' COMMENT '配送方式',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of s_send_type
-- ----------------------------
INSERT INTO `s_send_type` VALUES ('1', '顺丰');
INSERT INTO `s_send_type` VALUES ('2', '中通');
INSERT INTO `s_send_type` VALUES ('3', '韵达');

-- ----------------------------
-- Table structure for `s_shopping_cart`
-- ----------------------------
DROP TABLE IF EXISTS `s_shopping_cart`;
CREATE TABLE `s_shopping_cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `goods_id` bigint(20) NOT NULL,
  `goods_count` int(11) NOT NULL DEFAULT '1' COMMENT '商品数量',
  `create_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of s_shopping_cart
-- ----------------------------
INSERT INTO `s_shopping_cart` VALUES ('1', '8', '1', '1', '1513068704', '1513068704', null);
INSERT INTO `s_shopping_cart` VALUES ('2', '8', '3', '1', '1513068712', '1513068712', null);

-- ----------------------------
-- Table structure for `s_slide`
-- ----------------------------
DROP TABLE IF EXISTS `s_slide`;
CREATE TABLE `s_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示,0不显示',
  `delete_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片表';

-- ----------------------------
-- Records of s_slide
-- ----------------------------

-- ----------------------------
-- Table structure for `s_slide_item`
-- ----------------------------
DROP TABLE IF EXISTS `s_slide_item`;
CREATE TABLE `s_slide_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT '0' COMMENT '幻灯片id',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COMMENT '幻灯片内容',
  `more` text COMMENT '链接打开方式',
  PRIMARY KEY (`id`),
  KEY `slide_cid` (`slide_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='幻灯片子项表';

-- ----------------------------
-- Records of s_slide_item
-- ----------------------------

-- ----------------------------
-- Table structure for `s_theme`
-- ----------------------------
DROP TABLE IF EXISTS `s_theme`;
CREATE TABLE `s_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后升级时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否为已编译模板',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_theme
-- ----------------------------
INSERT INTO `s_theme` VALUES ('19', '0', '0', '0', '0', 'simpleboot3', 'simpleboot3', '1.0.2', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF模板', 'ThinkCMF默认模板');

-- ----------------------------
-- Table structure for `s_theme_file`
-- ----------------------------
DROP TABLE IF EXISTS `s_theme_file`;
CREATE TABLE `s_theme_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT '10000' COMMENT '排序',
  `theme` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_theme_file
-- ----------------------------
INSERT INTO `s_theme_file` VALUES ('105', '0', '10', 'simpleboot3', '文章页', 'portal/Article/index', 'portal/article', '文章页模板文件', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"hot_articles_category_id\":{\"title\":\"Hot Articles\\u5206\\u7c7bID\",\"name\":\"hot_articles_category_id\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);
INSERT INTO `s_theme_file` VALUES ('106', '0', '10', 'simpleboot3', '联系我们页', 'portal/Page/index', 'portal/contact', '联系我们页模板文件', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"baidu_map_info_window_text\":{\"title\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57\",\"name\":\"baidu_map_info_window_text\",\"value\":\"ThinkCMF<br\\/><span class=\'\'>\\u5730\\u5740\\uff1a\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def2601\\u53f7<\\/span>\",\"type\":\"text\",\"tip\":\"\\u767e\\u5ea6\\u5730\\u56fe\\u6807\\u6ce8\\u6587\\u5b57,\\u652f\\u6301\\u7b80\\u5355html\\u4ee3\\u7801\",\"rule\":[]},\"company_location\":{\"title\":\"\\u516c\\u53f8\\u5750\\u6807\",\"value\":\"\",\"type\":\"location\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_cn\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\",\"value\":\"\\u4e0a\\u6d77\\u5e02\\u5f90\\u6c47\\u533a\\u659c\\u571f\\u8def0001\\u53f7\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"address_en\":{\"title\":\"\\u516c\\u53f8\\u5730\\u5740\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"NO.0001 Xie Tu Road, Shanghai China\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"email\":{\"title\":\"\\u516c\\u53f8\\u90ae\\u7bb1\",\"value\":\"catman@thinkcmf.com\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_cn\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\",\"value\":\"021 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"phone_en\":{\"title\":\"\\u516c\\u53f8\\u7535\\u8bdd\\uff08\\u82f1\\u6587\\uff09\",\"value\":\"+8621 1000 0001\",\"type\":\"text\",\"tip\":\"\",\"rule\":{\"require\":true}},\"qq\":{\"title\":\"\\u8054\\u7cfbQQ\",\"value\":\"478519726\",\"type\":\"text\",\"tip\":\"\\u591a\\u4e2a QQ\\u4ee5\\u82f1\\u6587\\u9017\\u53f7\\u9694\\u5f00\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `s_theme_file` VALUES ('107', '0', '5', 'simpleboot3', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `s_theme_file` VALUES ('108', '0', '10', 'simpleboot3', '文章列表页', 'portal/List/index', 'portal/list', '文章列表模板文件', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":[],\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `s_theme_file` VALUES ('109', '0', '10', 'simpleboot3', '单页面', 'portal/Page/index', 'portal/page', '单页面模板文件', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"widgets\":{\"hottest_articles\":{\"title\":\"\\u70ed\\u95e8\\u6587\\u7ae0\",\"display\":\"1\",\"vars\":{\"hottest_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}},\"last_articles\":{\"title\":\"\\u6700\\u65b0\\u53d1\\u5e03\",\"display\":\"1\",\"vars\":{\"last_articles_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', null);
INSERT INTO `s_theme_file` VALUES ('110', '0', '10', 'simpleboot3', '搜索页面', 'portal/search/index', 'portal/search', '搜索模板文件', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', '{\"vars\":{\"varName1\":{\"title\":\"\\u70ed\\u95e8\\u641c\\u7d22\",\"value\":\"1\",\"type\":\"text\",\"tip\":\"\\u8fd9\\u662f\\u4e00\\u4e2atext\",\"rule\":{\"require\":true}}}}', null);
INSERT INTO `s_theme_file` VALUES ('111', '1', '0', 'simpleboot3', '模板全局配置', 'public/Config', 'public/config', '模板全局配置文件', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', '{\"vars\":{\"enable_mobile\":{\"title\":\"\\u624b\\u673a\\u6ce8\\u518c\",\"value\":1,\"type\":\"select\",\"options\":{\"1\":\"\\u5f00\\u542f\",\"0\":\"\\u5173\\u95ed\"},\"tip\":\"\"}}}', null);
INSERT INTO `s_theme_file` VALUES ('112', '1', '1', 'simpleboot3', '导航条', 'public/Nav', 'public/nav', '导航条模板文件', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', '{\"vars\":{\"company_name\":{\"title\":\"\\u516c\\u53f8\\u540d\\u79f0\",\"name\":\"company_name\",\"value\":\"ThinkCMF\",\"type\":\"text\",\"tip\":\"\",\"rule\":[]}}}', null);

-- ----------------------------
-- Table structure for `s_third_party_user`
-- ----------------------------
DROP TABLE IF EXISTS `s_third_party_user`;
CREATE TABLE `s_third_party_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '本站用户id',
  `last_login_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'access_token过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '绑定时间',
  `login_times` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态;1:正常;0:禁用',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '用户昵称',
  `third_party` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方惟一码',
  `app_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方应用 id',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `access_token` varchar(512) NOT NULL DEFAULT '' COMMENT '第三方授权码',
  `openid` varchar(40) NOT NULL DEFAULT '' COMMENT '第三方用户id',
  `union_id` varchar(64) NOT NULL DEFAULT '' COMMENT '第三方用户多个产品中的惟一 id,(如:微信平台)',
  `more` text COMMENT '扩展信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='第三方用户表';

-- ----------------------------
-- Records of s_third_party_user
-- ----------------------------

-- ----------------------------
-- Table structure for `s_user`
-- ----------------------------
DROP TABLE IF EXISTS `s_user`;
CREATE TABLE `s_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '生日',
  `last_login_time` int(11) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `coin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '金币',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '注册时间',
  `user_status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '用户手机号',
  `more` text COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  KEY `user_login` (`user_login`),
  KEY `user_nickname` (`user_nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='用户表';

-- ----------------------------
-- Records of s_user
-- ----------------------------
INSERT INTO `s_user` VALUES ('1', '1', '0', '0', '1512613308', '0', '0', '1512438225', '1', 'admin', '###04fd0e59ee36e0c6c0a235fcac2e7819', 'admin', 'shady@qq.com', '', '', '', '127.0.0.1', '', '', null);
INSERT INTO `s_user` VALUES ('8', '2', '0', '0', '1513069094', '6', '0', '1512462341', '1', '', '###79e38896911e1a64349643c889505af4', '', '', '', '', '', '127.0.0.1', '', '15880630261', null);
INSERT INTO `s_user` VALUES ('9', '2', '0', '0', '1512462453', '0', '0', '1512462453', '1', '', '###79e38896911e1a64349643c889505af4', '', '', '', '', '', '127.0.0.1', '', '15880630262', null);

-- ----------------------------
-- Table structure for `s_user_action`
-- ----------------------------
DROP TABLE IF EXISTS `s_user_action`;
CREATE TABLE `s_user_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  `reward_number` int(11) NOT NULL DEFAULT '0' COMMENT '奖励次数',
  `cycle_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '周期类型;0:不限;1:按天;2:按小时;3:永久',
  `cycle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '周期时间值',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `app` varchar(50) NOT NULL DEFAULT '' COMMENT '操作所在应用名或插件名等',
  `url` text COMMENT '执行操作的url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作表';

-- ----------------------------
-- Records of s_user_action
-- ----------------------------
INSERT INTO `s_user_action` VALUES ('1', '1', '0', '1', '1', '1', '用户登录', 'login', 'user', '');

-- ----------------------------
-- Table structure for `s_user_action_log`
-- ----------------------------
DROP TABLE IF EXISTS `s_user_action_log`;
CREATE TABLE `s_user_action_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '访问次数',
  `last_visit_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后访问时间',
  `object` varchar(100) NOT NULL DEFAULT '' COMMENT '访问对象的id,格式:不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称;格式:应用名+控制器+操作名,也可自己定义格式只要不发生冲突且惟一;',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user_id`,`object`,`action`),
  KEY `user_object_action_ip` (`user_id`,`object`,`action`,`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='访问记录表';

-- ----------------------------
-- Records of s_user_action_log
-- ----------------------------

-- ----------------------------
-- Table structure for `s_user_favorite`
-- ----------------------------
DROP TABLE IF EXISTS `s_user_favorite`;
CREATE TABLE `s_user_favorite` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户 id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '收藏内容的标题',
  `url` varchar(255) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的原文地址，不带域名',
  `description` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '收藏内容的描述',
  `table_name` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '收藏实体以前所在表,不带前缀',
  `object_id` int(10) unsigned DEFAULT '0' COMMENT '收藏内容原来的主键id',
  `create_time` int(10) unsigned DEFAULT '0' COMMENT '收藏时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户收藏表';

-- ----------------------------
-- Records of s_user_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for `s_user_login_attempt`
-- ----------------------------
DROP TABLE IF EXISTS `s_user_login_attempt`;
CREATE TABLE `s_user_login_attempt` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试次数',
  `attempt_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '尝试登录时间',
  `locked_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '锁定时间',
  `ip` varchar(15) NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT COMMENT='用户登录尝试表';

-- ----------------------------
-- Records of s_user_login_attempt
-- ----------------------------

-- ----------------------------
-- Table structure for `s_user_score_log`
-- ----------------------------
DROP TABLE IF EXISTS `s_user_score_log`;
CREATE TABLE `s_user_score_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '用户操作名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '更改积分，可以为负',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '更改金币，可以为负',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='用户操作积分等奖励日志表';

-- ----------------------------
-- Records of s_user_score_log
-- ----------------------------
INSERT INTO `s_user_score_log` VALUES ('1', '8', '1512550814', 'login', '1', '0');
INSERT INTO `s_user_score_log` VALUES ('2', '8', '1512618805', 'login', '1', '0');
INSERT INTO `s_user_score_log` VALUES ('3', '8', '1512696560', 'login', '1', '0');
INSERT INTO `s_user_score_log` VALUES ('4', '8', '1512802557', 'login', '1', '0');
INSERT INTO `s_user_score_log` VALUES ('5', '8', '1512953728', 'login', '1', '0');
INSERT INTO `s_user_score_log` VALUES ('6', '8', '1513061134', 'login', '1', '0');

-- ----------------------------
-- Table structure for `s_user_token`
-- ----------------------------
DROP TABLE IF EXISTS `s_user_token`;
CREATE TABLE `s_user_token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户id',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT ' 过期时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `token` varchar(64) NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='用户客户端登录 token 表';

-- ----------------------------
-- Records of s_user_token
-- ----------------------------
INSERT INTO `s_user_token` VALUES ('3', '1', '1528165308', '1512613308', '4a242a47aecda8fcdb7a35cd5fa54464b168ba72371a48618040e9d958c1cfaa', 'web');

-- ----------------------------
-- Table structure for `s_verification_code`
-- ----------------------------
DROP TABLE IF EXISTS `s_verification_code`;
CREATE TABLE `s_verification_code` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当天已经发送成功的次数',
  `send_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后发送成功时间',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='手机邮箱数字验证码表';

-- ----------------------------
-- Records of s_verification_code
-- ----------------------------
INSERT INTO `s_verification_code` VALUES ('9', '5', '1512462411', '1512464211', '114886', '15880630261');
INSERT INTO `s_verification_code` VALUES ('10', '1', '1512462430', '1512464230', '514816', '15880630262');
