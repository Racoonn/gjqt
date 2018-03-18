SET NAMES UTF8;
DROP DATABASE IF EXISTS gjqt;
#建库
CREATE DATABASE gjqt CHARSET=UTF8;
USE gjqt;

#创建论坛资料模块表 forum_module
CREATE TABLE forum_module(
	mid INT PRIMARY KEY AUTO_INCREMENT, #编号
	module VARCHAR(8) #模块名称
);

#创建论坛各模块详细资料表 forum_details
CREATE TABLE forum_details(
	did  INT PRIMARY KEY AUTO_INCREMENT, #编号
	img VARCHAR(64),#图片
	theme VARCHAR(64),#主题
	mid  INT,
	FOREIGN KEY (mid) REFERENCES forum_module(mid)
);

#创建论坛各模块下主题表forum_theme
CREATE TABLE forum_theme(
	tid  INT PRIMARY KEY AUTO_INCREMENT, #编号
	subscribe VARCHAR(128),#描述
	did INT,
	FOREIGN KEY (did) REFERENCES forum_details(did)
);

#创建用户表 user
CREATE TABLE user(
	uid  INT PRIMARY KEY AUTO_INCREMENT, #编号
	uname VARCHAR(36) NOT NULL,
	upwd VARCHAR(48),
	avatar VARCHAR(128) DEFAULT 'img/avatar/noavatar_big.gif',
	gender INT DEFAULT 0
);

--
-- 表的结构 `gj_hero_gender`
--

CREATE TABLE `gj_hero_gender` (
  `gid` int(11) NOT NULL,
  `hid` int(11) DEFAULT NULL,
  `class` varchar(128) DEFAULT '',
  `role1` varchar(128) DEFAULT '',
  `role2` varchar(128) DEFAULT '',
  `herosName` varchar(128) DEFAULT '',
  `img` varchar(128) DEFAULT '',
  `fimg` varchar(128) DEFAULT '',
  `jn1` varchar(128) DEFAULT '',
  `Jn_1` varchar(128) DEFAULT '',
  `jn2` varchar(128) DEFAULT '',
  `Jn_2` varchar(128) DEFAULT '',
  `jn3` varchar(128) DEFAULT '',
  `Jn_3` varchar(128) DEFAULT '',
  `jn4` varchar(128) DEFAULT '',
  `Jn_4` varchar(128) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gj_hero_gender`
--

INSERT INTO `gj_hero_gender` (`gid`, `hid`, `class`, `role1`, `role2`, `herosName`, `img`, `fimg`, `jn1`, `Jn_1`, `jn2`, `Jn_2`, `jn3`, `Jn_3`, `jn4`, `Jn_4`) VALUES
(1, 1, 'role_slider1', 'role1-1', 'role1-2', 'info1', 'img/person/Hperson/male-hero/1-1.png', 'img/person/Hperson/female-hero/1-2.png', '千军破', '向前突进，停下时攻击前方目标<br>•可进行三段突进', '荡重关', '扔出半边枪头攻击前方目标，如果命中则拉近自身并攻击此技能命中之后一段时间内<br>普通攻击变为北宸流炎枪<br>苍龙破变为翠龙斩', '踏平川', '重击目标将其击倒在地，并溅射周围目标此技能命中之后一段时间内<br>普通攻击变为北宸流炎枪<br>苍龙破变为惊龙枪或者翠龙斩（目标未被击倒时）', '同归', '爆发体内怒气,召唤狮子头, 持续减少怒气直到怒气为零<br>在状态期间，获得狮子头的力量，以一定百分比复制自己的每一次攻击<br>在状态期间，使用某些技能会召唤狮子头与你并肩作战.'),
(2, 2, 'role_slider2', 'role2-1', 'role2-2', 'info2', 'img/person/Hperson/male-hero/2-1.png', 'img/person/Hperson/female-hero/2-2.png', '了无痕', '制造幻影向前方冲击并造成伤害<br>对自身周围造成伤害, 斩风剑技中威力最大的绝招之一，也是《弹铗九问》中对于大道的最后一问，沧桑变幻，终归无痕。<br>•施展蓄力后的卷云斩，根据蓄力段数减少该招式的调息时间 <br>•额外生成一个幻影', '飒沓流星', '向前撞击，眩晕敌人并造成伤害, 如流星般划过天际，白驹过隙，稍纵即逝。', '我自逍遥', '喝酒御剑，撞倒沿途目标并造成伤害, 施展过程中可连击：中断技能，并产生一个幻影 <br>俗世多桎梏，壶中觅逍遥。', '逆风式', '用重剑格挡伤害, 成功格挡后出现幻影反击并解除格挡状态，击倒目标并造成伤害<br>斩风剑招中的异类，迎头而上，用最激烈的方式针锋相对。'),
(3, 3, 'role_slider3', 'role3-1', 'role3-2', 'info3', 'img/person/Hperson/male-hero/3-1.png', 'img/person/Hperson/female-hero/3-2.png', '云龙击', '可蓄力，消耗剑意对单体目标攻击 <br>•消耗更多剑意数量，造成的伤害显著提升，对命中的目标施加剑闪标记', '化清阵', '施展阵法，自身处于阵法中时，持续获得剑意<br>•施展时立即回复全部剑意', '乾坤一气', '击退前方敌人并震晕 <br>•破霸体效果提升', '御剑行', '朝移动方向飞出一柄飞剑<br>，飞剑将在远处停留,一定时间内连击可闪现至飞剑位置'),
(4, 4, 'role_slider4', 'role4-1', 'role4-2', 'info4', 'img/person/Hperson/male-hero/4-1.png', 'img/person/Hperson/female-hero/4-2.png', '五音移变', '切换自身属性状态（顺序为水-火-金）', '拂拨万象', '开启期间持续损失法力，并使秋水和阳春的施展时间减少，且阳春治疗量提升<br>用连续抹弦、多弦同奏等指法，令琴曲如天地万象般生生不息。', '惊雷动', '解除一切控制效果，并令自身被雷电包围，移动速度提升。', '落雪成碑', '冻结自身\r\n，受到伤害降低并持续回复生命,太华名景之一。合朔真人便隐居在坐忘谷小湖旁。'),
(5, 5, 'role_slider5', 'role5-1', 'role5-2', 'info5', 'img/person/Hperson/male-hero/5-1.png', 'img/person/Hperson/female-hero/5-2.png', '兰吐芳', '驱散自己周围队友身上的异常状态', '素音栖心', '牺牲自己灵兽的实体与其合二为一\n，对周围范围进行伤害,在一定时间内大幅提升自己攻击能力 <br>•在状态期间元神无限 <br>•对自己召唤的元素精灵进行强化，使他们攻击速度加快，并重置他们的存在时间', '白泽', '召唤自己的灵兽\r\n，来辅助自己进行攻击,与灵兽心灵相通，共享血量', '玉蝶瑶光', '翩翩起舞\r\n，给自己周围的队友进行资源回复,根据队友的职业和天赋不同回复效果不同'),
(6, 6, 'role_slider6', 'role6-1', 'role6-2', 'info6', 'img/person/Hperson/male-hero/6-1.png', 'img/person/Hperson/female-hero/6-2.png', '尘烟隐', '隐匿自身气息\n，使敌方不易发现, 隐匿时，造成的所有伤害提高，并使转化入幽灯的伤害值提高<br>•尘烟隐状态下移动速度提升 <br>•尘烟隐状态下转化入幽灯的伤害值额外提升50%', '冥烟斩', '对前方造成伤害\n，每秒最多触发1次 <br>•会心时回复生命，每秒最多触发1次', '灵蛇蛊', '在身边安置一个蛇蛊柱\n，对最近的敌对目标攻击并造成减速效果,蛇蛊柱每次造成伤害时会为自己回复一定生命', '牵命偶', '创建目标人偶\n，所需时间与目标距离有关,被人偶标记的目标会持续受到其伤害,若目标离人偶过远，伤害将大幅提升并且受到减速效果');

-- --------------------------------------------------------

--
-- 表的结构 `gj_hero_img`
--

CREATE TABLE `gj_hero_img` (
  `hid` int(11) NOT NULL,
  `hname` varchar(32) DEFAULT '',
  `img` varchar(128) DEFAULT '',
  `imgBg` varchar(128) DEFAULT '',
  `nandu` varchar(128) DEFAULT '',
  `tedian1` varchar(128) DEFAULT '',
  `t1img` varchar(128) DEFAULT '',
  `tedian2` varchar(128) DEFAULT '',
  `t2img` varchar(128) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `gj_hero_img`
--

INSERT INTO `gj_hero_img` (`hid`, `hname`, `img`, `imgBg`, `nandu`, `tedian1`, `t1img`, `tedian2`, `t2img`) VALUES
(1, '天罡', 'img/person/person/1_h.jpg', 'img/person/bg/1.jpg', '60%', '坚韧', 'img/person/ico/ico_strong.png', '杀伤', 'img/person/ico/ico_kill.png'),
(2, '斩风', 'img/person/person/2_h.jpg', 'img/person/bg/2.jpg', '60%', '坚韧', 'img/person/ico/ico_strong.png', '杀伤', 'img/person/ico/ico_kill.png'),
(3, '御剑', 'img/person/person/3_h.jpg', 'img/person/bg/3.jpg', '100%', '杀伤', 'img/person/ico/ico_kill.png', '杀伤', 'img/person/ico/ico_kill.png'),
(4, '妙法', 'img/person/person/4_h.jpg', 'img/person/bg/4.jpg', '80%', '辅助', 'img/person/ico/ico_fuzhu.png', '杀伤', 'img/person/ico/ico_kill.png'),
(5, '司命', 'img/person/person/5_h.jpg', 'img/person/bg/5.jpg', '40%', '辅助', 'img/person/ico/ico_fuzhu.png', '杀伤', 'img/person/ico/ico_kill.png'),
(6, '咒隐', 'img/person/person/6_h.jpg', 'img/person/bg/6.jpg', '80%', '辅助', 'img/person/ico/ico_fuzhu.png', '杀伤', 'img/person/ico/ico_kill.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gj_hero_gender`
--
ALTER TABLE `gj_hero_gender`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `gj_hero_img`
--
ALTER TABLE `gj_hero_img`
  ADD PRIMARY KEY (`hid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `gj_hero_gender`
--
ALTER TABLE `gj_hero_gender`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- 使用表AUTO_INCREMENT `gj_hero_img`
--
ALTER TABLE `gj_hero_img`
  MODIFY `hid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

