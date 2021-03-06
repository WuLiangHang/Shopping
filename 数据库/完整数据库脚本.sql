USE [master]
GO
/****** Object:  Database [db_shopping]    Script Date: 2016/12/23 18:45:16 ******/
CREATE DATABASE [db_shopping]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'db_shopping_Data', FILENAME = N'E:\db_shopping_Data.MDF' , SIZE = 3008KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'db_shopping_Log', FILENAME = N'E:\db_shopping_Log.LDF' , SIZE = 1024KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
GO
ALTER DATABASE [db_shopping] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [db_shopping].[dbo].[sp_fulltext_database] @action = 'disable'
end
GO
ALTER DATABASE [db_shopping] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [db_shopping] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [db_shopping] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [db_shopping] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [db_shopping] SET ARITHABORT OFF 
GO
ALTER DATABASE [db_shopping] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [db_shopping] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [db_shopping] SET AUTO_SHRINK ON 
GO
ALTER DATABASE [db_shopping] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [db_shopping] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [db_shopping] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [db_shopping] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [db_shopping] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [db_shopping] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [db_shopping] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [db_shopping] SET  DISABLE_BROKER 
GO
ALTER DATABASE [db_shopping] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [db_shopping] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [db_shopping] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [db_shopping] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [db_shopping] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [db_shopping] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [db_shopping] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [db_shopping] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [db_shopping] SET  MULTI_USER 
GO
ALTER DATABASE [db_shopping] SET PAGE_VERIFY TORN_PAGE_DETECTION  
GO
ALTER DATABASE [db_shopping] SET DB_CHAINING OFF 
GO
ALTER DATABASE [db_shopping] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [db_shopping] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'db_shopping', N'ON'
GO
USE [db_shopping]
GO
/****** Object:  Table [dbo].[tb_affiche]    Script Date: 2016/12/23 18:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_affiche](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[content] [text] NULL,
	[issueTime] [smalldatetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_bigType]    Script Date: 2016/12/23 18:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_bigType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bigName] [varchar](50) NULL,
	[creaTime] [smalldatetime] NULL,
 CONSTRAINT [PK_tb_bigType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_goods]    Script Date: 2016/12/23 18:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_goods](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bigId] [int] NOT NULL,
	[smallId] [int] NOT NULL,
	[goodsName] [varchar](50) NULL,
	[goodsFrom] [varchar](50) NULL,
	[introduce] [text] NULL,
	[creaTime] [smalldatetime] NULL,
	[nowPrice] [money] NULL,
	[freePrice] [money] NULL,
	[number] [int] NULL,
	[pirture] [varchar](50) NULL,
	[mark] [bit] NULL,
	[member] [varchar](50) NULL,
 CONSTRAINT [PK_tb_goods] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_link]    Script Date: 2016/12/23 18:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_link](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[linkName] [varchar](50) NULL,
	[linkAddress] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_manager]    Script Date: 2016/12/23 18:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_manager](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[account] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[sign] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_member]    Script Date: 2016/12/23 18:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_member](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
	[reallyName] [varchar](10) NULL,
	[age] [int] NULL,
	[profession] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[question] [varchar](50) NULL,
	[result] [varchar](50) NULL,
 CONSTRAINT [PK_tb_member] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_order]    Script Date: 2016/12/23 18:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_order](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[number] [varchar](50) NOT NULL,
	[name] [varchar](50) NULL,
	[reallyName] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[tel] [varchar](50) NULL,
	[setMoney] [varchar](50) NULL,
	[post] [varchar](50) NULL,
	[bz] [text] NULL,
	[sign] [bit] NULL,
	[creaTime] [smalldatetime] NULL,
 CONSTRAINT [PK_tb_order] PRIMARY KEY CLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_orderDetail]    Script Date: 2016/12/23 18:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_orderDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[orderNumber] [varchar](50) NULL,
	[goodsId] [int] NOT NULL,
	[price] [float] NULL,
	[number] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_smallType]    Script Date: 2016/12/23 18:45:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tb_smallType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bigId] [int] NOT NULL,
	[smallName] [varchar](50) NULL,
	[creaTime] [smalldatetime] NULL,
 CONSTRAINT [PK_tb_smallType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tb_affiche] ON 

INSERT [dbo].[tb_affiche] ([id], [name], [content], [issueTime]) VALUES (26, N'闲庭芳苑交易网平台欢迎您', N'闲庭芳苑交易网1.0公测啦！欢迎您的访问。', CAST(0xA6E102CF AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[tb_affiche] OFF
SET IDENTITY_INSERT [dbo].[tb_bigType] ON 

INSERT [dbo].[tb_bigType] ([id], [bigName], [creaTime]) VALUES (23, N'编程类', CAST(0xA6E102D1 AS SmallDateTime))
INSERT [dbo].[tb_bigType] ([id], [bigName], [creaTime]) VALUES (24, N'设计类', CAST(0xA6E102D1 AS SmallDateTime))
INSERT [dbo].[tb_bigType] ([id], [bigName], [creaTime]) VALUES (25, N'网络类', CAST(0xA6E102D1 AS SmallDateTime))
INSERT [dbo].[tb_bigType] ([id], [bigName], [creaTime]) VALUES (26, N'其他类', CAST(0xA6E102D1 AS SmallDateTime))
INSERT [dbo].[tb_bigType] ([id], [bigName], [creaTime]) VALUES (28, N'学习用品', CAST(0xA6E102D1 AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[tb_bigType] OFF
SET IDENTITY_INSERT [dbo].[tb_goods] ON 

INSERT [dbo].[tb_goods] ([id], [bigId], [smallId], [goodsName], [goodsFrom], [introduce], [creaTime], [nowPrice], [freePrice], [number], [pirture], [mark], [member]) VALUES (49, 23, 40, N'ASP.NET从入门到精通', N'清华出版社', N'正版包邮【新版】 附光盘 计算机书籍 ASP.NET从入门到精通 第2版 asp.net项目开发教材书籍 ASP.NET网站开发项目教程 ', CAST(0xA6E102D1 AS SmallDateTime), 45.0000, 0.0000, 0, N'goodsPicture/1457704219178.jpg', 0, N'test')
INSERT [dbo].[tb_goods] ([id], [bigId], [smallId], [goodsName], [goodsFrom], [introduce], [creaTime], [nowPrice], [freePrice], [number], [pirture], [mark], [member]) VALUES (50, 24, 41, N'ae教程全面', N'北京大学出版社', N'AE软件 CC中文版本 一键安装永久 ae插件安装 教程 ae教程全面 ', CAST(0xA6E102D1 AS SmallDateTime), 55.0000, 0.0000, 0, N'goodsPicture/1457704310912.JPG', 0, N'test')
INSERT [dbo].[tb_goods] ([id], [bigId], [smallId], [goodsName], [goodsFrom], [introduce], [creaTime], [nowPrice], [freePrice], [number], [pirture], [mark], [member]) VALUES (51, 25, 43, N'黑客攻防从入门到精通', N'吉林大学出版社', N'正版 黑客攻防从入门到精通 附vip视频 黑客实战技术知识教程软件工具自学电脑编程入门书籍 计算机网络技术安全基础书籍 密码系统 ', CAST(0xA6E102D1 AS SmallDateTime), 66.0000, 55.0000, 0, N'goodsPicture/1457704378647.JPG', 1, N'test')
INSERT [dbo].[tb_goods] ([id], [bigId], [smallId], [goodsName], [goodsFrom], [introduce], [creaTime], [nowPrice], [freePrice], [number], [pirture], [mark], [member]) VALUES (52, 26, 44, N'计算机应用基础', N'北京大学出版社', N'现货包邮 计算机考研书籍 计算机网络 (第六版） 谢希仁 计算机网络第6版基础应用书籍 官方指定计算机教材计赠CD光盘 官方正版 ', CAST(0xA6E102D1 AS SmallDateTime), 44.0000, 40.0000, 0, N'goodsPicture/1457704480503.JPG', 1, N'test')
INSERT [dbo].[tb_goods] ([id], [bigId], [smallId], [goodsName], [goodsFrom], [introduce], [creaTime], [nowPrice], [freePrice], [number], [pirture], [mark], [member]) VALUES (53, 25, 43, N'计算机网络基础', N'清华大学出版商', N'计算机网络基础学习资料', CAST(0xA6E102D1 AS SmallDateTime), 38.0000, 0.0000, 4, N'goodsPicture/1457743324219.JPG', 0, N'zhangsan')
INSERT [dbo].[tb_goods] ([id], [bigId], [smallId], [goodsName], [goodsFrom], [introduce], [creaTime], [nowPrice], [freePrice], [number], [pirture], [mark], [member]) VALUES (54, 28, 46, N'创意记事本', N'法拉蒙', N'法拉蒙 文具笔记本创意记事本A5商务手账本厚日记本办公本子定制 ', CAST(0xA6E102D1 AS SmallDateTime), 9.9000, 0.0000, 0, N'goodsPicture/1458182250395.jpg', 0, N'zhangsan')
INSERT [dbo].[tb_goods] ([id], [bigId], [smallId], [goodsName], [goodsFrom], [introduce], [creaTime], [nowPrice], [freePrice], [number], [pirture], [mark], [member]) VALUES (55, 28, 46, N'学生阅读摘记本', N'韩国', N'38张/76页，25.8*18.4cm 摘抄精美词句，写出读书心得。 内容鉴赏，探讨主题，评论人物，评品语言。读书好伴侣！一口价为一本的价格哦！', CAST(0xA6E102D1 AS SmallDateTime), 9.5000, 8.0000, 0, N'goodsPicture/1458182318737.jpg', 1, N'zhangsan')
INSERT [dbo].[tb_goods] ([id], [bigId], [smallId], [goodsName], [goodsFrom], [introduce], [creaTime], [nowPrice], [freePrice], [number], [pirture], [mark], [member]) VALUES (56, 28, 46, N'带锁日记本', N'北京', N'金谷 欧式复古名筑带锁日记本 盒装密码笔记本 精装硬面抄记事本 ', CAST(0xA6E102D1 AS SmallDateTime), 18.0000, 0.0000, 0, N'goodsPicture/1458182387714.JPG', 0, N'zhangsan')
INSERT [dbo].[tb_goods] ([id], [bigId], [smallId], [goodsName], [goodsFrom], [introduce], [creaTime], [nowPrice], [freePrice], [number], [pirture], [mark], [member]) VALUES (57, 28, 48, N'二手笔记本电脑', N'卖本本', N'QRTECH 麦本本 小麦2S 独显游戏本 15英寸i5超薄笔记本 手提电脑 ', CAST(0xA6E102D1 AS SmallDateTime), 2788.0000, 0.0000, 0, N'goodsPicture/1458182474096.JPG', 0, N'zhangsan')
INSERT [dbo].[tb_goods] ([id], [bigId], [smallId], [goodsName], [goodsFrom], [introduce], [creaTime], [nowPrice], [freePrice], [number], [pirture], [mark], [member]) VALUES (58, 28, 46, N'得力文具中性笔', N'得力', N'得力文具中性笔0.5签字笔12支+20笔芯碳素笔办公用品黑色水笔包邮 ', CAST(0xA6E102D1 AS SmallDateTime), 8.0000, 5.0000, 0, N'goodsPicture/1458182541179.JPG', 1, N'zhangsan')
INSERT [dbo].[tb_goods] ([id], [bigId], [smallId], [goodsName], [goodsFrom], [introduce], [creaTime], [nowPrice], [freePrice], [number], [pirture], [mark], [member]) VALUES (59, 28, 46, N'带线水笔', N'得力', N'得力中性笔固定前台带线水笔可粘贴桌面服务台签字 4支装 包邮 ', CAST(0xA6E102D1 AS SmallDateTime), 8.0000, 0.0000, 1, N'goodsPicture/1458182588290.JPG', 0, N'zhangsan')
INSERT [dbo].[tb_goods] ([id], [bigId], [smallId], [goodsName], [goodsFrom], [introduce], [creaTime], [nowPrice], [freePrice], [number], [pirture], [mark], [member]) VALUES (60, 28, 46, N'女生文具袋', N'咔米嗒', N'咔米嗒儿童创意文具盒铅笔盒女生文具袋小学生笔袋女童公主铅笔袋 ', CAST(0xA6E102D1 AS SmallDateTime), 22.0000, 20.0000, 0, N'goodsPicture/1458182654823.JPG', 1, N'zhangsan')
INSERT [dbo].[tb_goods] ([id], [bigId], [smallId], [goodsName], [goodsFrom], [introduce], [creaTime], [nowPrice], [freePrice], [number], [pirture], [mark], [member]) VALUES (61, 28, 46, N'学生笔袋', N'迪士尼', N'迪士尼小学生笔袋大容量儿童文具盒米奇铅笔袋学习用品韩版可爱 ', CAST(0xA6E102D1 AS SmallDateTime), 5.0000, 0.0000, 0, N'goodsPicture/1458182730251.JPG', 0, N'zhangsan')
INSERT [dbo].[tb_goods] ([id], [bigId], [smallId], [goodsName], [goodsFrom], [introduce], [creaTime], [nowPrice], [freePrice], [number], [pirture], [mark], [member]) VALUES (62, 28, 47, N'iPad mini2 ', N'苹果', N'iPad mini2 32GB WIFI 平板电脑', CAST(0xA6E102D1 AS SmallDateTime), 2222.0000, 2000.0000, 0, N'goodsPicture/1458182791649.JPG', 1, N'zhangsan')
SET IDENTITY_INSERT [dbo].[tb_goods] OFF
SET IDENTITY_INSERT [dbo].[tb_link] ON 

INSERT [dbo].[tb_link] ([id], [linkName], [linkAddress]) VALUES (25, N'百度', N'http://www.baidu.com')
INSERT [dbo].[tb_link] ([id], [linkName], [linkAddress]) VALUES (26, N'腾讯', N'http://www.qq.com')
INSERT [dbo].[tb_link] ([id], [linkName], [linkAddress]) VALUES (27, N'新浪', N'http://www.sina.com.cn')
SET IDENTITY_INSERT [dbo].[tb_link] OFF
SET IDENTITY_INSERT [dbo].[tb_manager] ON 

INSERT [dbo].[tb_manager] ([id], [account], [password], [name], [sign]) VALUES (9, N'admin', N'123', N'张三', 1)
SET IDENTITY_INSERT [dbo].[tb_manager] OFF
SET IDENTITY_INSERT [dbo].[tb_member] ON 

INSERT [dbo].[tb_member] ([id], [name], [password], [reallyName], [age], [profession], [email], [question], [result]) VALUES (20, N'test', N'123', N'李四', 22, N'学生', N'123@qq.com', N'123', N'123')
INSERT [dbo].[tb_member] ([id], [name], [password], [reallyName], [age], [profession], [email], [question], [result]) VALUES (21, N'test1', N'123', N'王五', 25, N'办公室文员', N'1234@qq.com', N'我是谁', N'王五')
INSERT [dbo].[tb_member] ([id], [name], [password], [reallyName], [age], [profession], [email], [question], [result]) VALUES (22, N'test4', N'123', N'王五', 18, N'学生', N'124@qq.com', N'我是谁', N'王五')
INSERT [dbo].[tb_member] ([id], [name], [password], [reallyName], [age], [profession], [email], [question], [result]) VALUES (23, N'zhangsan', N'123', N'张三', 22, N'学生', N'123@qq.com', N'123', N'123')
SET IDENTITY_INSERT [dbo].[tb_member] OFF
SET IDENTITY_INSERT [dbo].[tb_order] ON 

INSERT [dbo].[tb_order] ([id], [number], [name], [reallyName], [address], [tel], [setMoney], [post], [bz], [sign], [creaTime]) VALUES (31, N'1457743373705', N'test', N'李四', N'北京市朝阳区', N'14859281029', N'邮政付款', N'特快专递', N'发ems', 1, CAST(0xA6E102D2 AS SmallDateTime))
INSERT [dbo].[tb_order] ([id], [number], [name], [reallyName], [address], [tel], [setMoney], [post], [bz], [sign], [creaTime]) VALUES (32, N'1482120268921', N'test', N'李四', N'111', N'222', N'现金支付', N'特快专递', N'11', 1, CAST(0xA6E102D5 AS SmallDateTime))
INSERT [dbo].[tb_order] ([id], [number], [name], [reallyName], [address], [tel], [setMoney], [post], [bz], [sign], [creaTime]) VALUES (33, N'1482120421198', N'test', N'李四', N'123', N'222', N'银行付款', N'普通邮寄', N'22', 0, CAST(0xA6E102D7 AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[tb_order] OFF
SET IDENTITY_INSERT [dbo].[tb_orderDetail] ON 

INSERT [dbo].[tb_orderDetail] ([id], [orderNumber], [goodsId], [price], [number]) VALUES (22, N'1457743373705', 53, 38, 2)
INSERT [dbo].[tb_orderDetail] ([id], [orderNumber], [goodsId], [price], [number]) VALUES (23, N'1482120268921', 53, 38, 2)
INSERT [dbo].[tb_orderDetail] ([id], [orderNumber], [goodsId], [price], [number]) VALUES (24, N'1482120421198', 59, 8, 1)
SET IDENTITY_INSERT [dbo].[tb_orderDetail] OFF
SET IDENTITY_INSERT [dbo].[tb_smallType] ON 

INSERT [dbo].[tb_smallType] ([id], [bigId], [smallName], [creaTime]) VALUES (40, 23, N'编程书籍', CAST(0xA6E102D2 AS SmallDateTime))
INSERT [dbo].[tb_smallType] ([id], [bigId], [smallName], [creaTime]) VALUES (41, 24, N'视频处理', CAST(0xA6E102D2 AS SmallDateTime))
INSERT [dbo].[tb_smallType] ([id], [bigId], [smallName], [creaTime]) VALUES (42, 24, N'图像处理', CAST(0xA6E102D2 AS SmallDateTime))
INSERT [dbo].[tb_smallType] ([id], [bigId], [smallName], [creaTime]) VALUES (43, 25, N'网络维护', CAST(0xA6E102D2 AS SmallDateTime))
INSERT [dbo].[tb_smallType] ([id], [bigId], [smallName], [creaTime]) VALUES (44, 26, N'计算机基础', CAST(0xA6E102D2 AS SmallDateTime))
INSERT [dbo].[tb_smallType] ([id], [bigId], [smallName], [creaTime]) VALUES (46, 28, N'文具', CAST(0xA6E102D2 AS SmallDateTime))
INSERT [dbo].[tb_smallType] ([id], [bigId], [smallName], [creaTime]) VALUES (47, 28, N'电子产品', CAST(0xA6E102D2 AS SmallDateTime))
INSERT [dbo].[tb_smallType] ([id], [bigId], [smallName], [creaTime]) VALUES (48, 28, N'其他', CAST(0xA6E102D2 AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[tb_smallType] OFF
ALTER TABLE [dbo].[tb_goods]  WITH NOCHECK ADD  CONSTRAINT [FK_tb_goods_tb_smallType] FOREIGN KEY([smallId])
REFERENCES [dbo].[tb_smallType] ([id])
GO
ALTER TABLE [dbo].[tb_goods] CHECK CONSTRAINT [FK_tb_goods_tb_smallType]
GO
ALTER TABLE [dbo].[tb_order]  WITH NOCHECK ADD  CONSTRAINT [FK_tb_order_tb_member] FOREIGN KEY([name])
REFERENCES [dbo].[tb_member] ([name])
GO
ALTER TABLE [dbo].[tb_order] CHECK CONSTRAINT [FK_tb_order_tb_member]
GO
ALTER TABLE [dbo].[tb_orderDetail]  WITH NOCHECK ADD  CONSTRAINT [FK_tb_orderDetail_tb_goods] FOREIGN KEY([goodsId])
REFERENCES [dbo].[tb_goods] ([id])
GO
ALTER TABLE [dbo].[tb_orderDetail] CHECK CONSTRAINT [FK_tb_orderDetail_tb_goods]
GO
ALTER TABLE [dbo].[tb_orderDetail]  WITH CHECK ADD  CONSTRAINT [FK_tb_orderDetail_tb_order] FOREIGN KEY([orderNumber])
REFERENCES [dbo].[tb_order] ([number])
GO
ALTER TABLE [dbo].[tb_orderDetail] CHECK CONSTRAINT [FK_tb_orderDetail_tb_order]
GO
ALTER TABLE [dbo].[tb_smallType]  WITH NOCHECK ADD  CONSTRAINT [FK_tb_smallType_tb_bigType] FOREIGN KEY([bigId])
REFERENCES [dbo].[tb_bigType] ([id])
GO
ALTER TABLE [dbo].[tb_smallType] CHECK CONSTRAINT [FK_tb_smallType_tb_bigType]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_affiche', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_affiche', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公告内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_affiche', @level2type=N'COLUMN',@level2name=N'content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_affiche', @level2type=N'COLUMN',@level2name=N'issueTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大类别编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_bigType', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_bigType', @level2type=N'COLUMN',@level2name=N'bigName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_bigType', @level2type=N'COLUMN',@level2name=N'creaTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_goods', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大类别编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_goods', @level2type=N'COLUMN',@level2name=N'bigId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小类别编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_goods', @level2type=N'COLUMN',@level2name=N'smallId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_goods', @level2type=N'COLUMN',@level2name=N'goodsName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'厂家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_goods', @level2type=N'COLUMN',@level2name=N'goodsFrom'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品介绍' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_goods', @level2type=N'COLUMN',@level2name=N'introduce'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发布时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_goods', @level2type=N'COLUMN',@level2name=N'creaTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'现价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_goods', @level2type=N'COLUMN',@level2name=N'nowPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'特价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_goods', @level2type=N'COLUMN',@level2name=N'freePrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_goods', @level2type=N'COLUMN',@level2name=N'number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品图片' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_goods', @level2type=N'COLUMN',@level2name=N'pirture'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标记' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_goods', @level2type=N'COLUMN',@level2name=N'mark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_link', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'友情链接名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_link', @level2type=N'COLUMN',@level2name=N'linkName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_link', @level2type=N'COLUMN',@level2name=N'linkAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_manager', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员帐号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_manager', @level2type=N'COLUMN',@level2name=N'account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_manager', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_manager', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'激活状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_manager', @level2type=N'COLUMN',@level2name=N'sign'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_member', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帐号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_member', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_member', @level2type=N'COLUMN',@level2name=N'password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_member', @level2type=N'COLUMN',@level2name=N'reallyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'年龄' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_member', @level2type=N'COLUMN',@level2name=N'age'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'职业' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_member', @level2type=N'COLUMN',@level2name=N'profession'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电子邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_member', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安全问题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_member', @level2type=N'COLUMN',@level2name=N'question'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'问题答案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_member', @level2type=N'COLUMN',@level2name=N'result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_order', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_order', @level2type=N'COLUMN',@level2name=N'number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帐号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_order', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收件人姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_order', @level2type=N'COLUMN',@level2name=N'reallyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_order', @level2type=N'COLUMN',@level2name=N'address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_order', @level2type=N'COLUMN',@level2name=N'tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_order', @level2type=N'COLUMN',@level2name=N'setMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮寄方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_order', @level2type=N'COLUMN',@level2name=N'post'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_order', @level2type=N'COLUMN',@level2name=N'bz'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出货标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_order', @level2type=N'COLUMN',@level2name=N'sign'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_order', @level2type=N'COLUMN',@level2name=N'creaTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_orderDetail', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_orderDetail', @level2type=N'COLUMN',@level2name=N'orderNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_orderDetail', @level2type=N'COLUMN',@level2name=N'goodsId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'单价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_orderDetail', @level2type=N'COLUMN',@level2name=N'price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_orderDetail', @level2type=N'COLUMN',@level2name=N'number'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小类别编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_smallType', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属大类别编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_smallType', @level2type=N'COLUMN',@level2name=N'bigId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小类别名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_smallType', @level2type=N'COLUMN',@level2name=N'smallName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tb_smallType', @level2type=N'COLUMN',@level2name=N'creaTime'
GO
USE [master]
GO
ALTER DATABASE [db_shopping] SET  READ_WRITE 
GO
