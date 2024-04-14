create database asmjava4
go

use asmjava4
go

create table [user](
	id				int                primary key      identity,
	username		varchar(10)		   unique not null,
	[password]		varchar(10)		   not null,
	email			varchar(50)		   unique not null,
	isAdmin			bit				   not null default 0,
	isActive		bit				   not null default 1
);

go

create table video(
	id				int                primary key      identity,
	title			nvarchar(255)	   not null,
	href			varchar(50)		   unique not null,
	poster			varchar(255)	   null,
	[views]			int				   not null default 0,
	shares			int				   not null default 0,
	[description]	nvarchar(255)	   not null,
	isActive        bit				   not null default 1
);

go

create table history(
	id				int                primary key      identity,
	userId			int				   foreign key references [user](id),
	videoId			int				   foreign key references [video](id),
	viewedDate		datetime		   not null default getDate(),
	isliked			bit				   not null default 0,
	likedDate		datetime		   null,
);
go

insert into [user](username,[password],email,isAdmin) values
('giaunv',		'123',		'giaunvpd08997@fpt.edu.vn',				1),
('teonv',		'1234',		'nguyenvangiauitdn.vn@gmail.com',		0)

go

insert into video(title,href, [description]) values
(N'SƠN TÙNG M-TP | CHÚNG TA CỦA TƯƠNG LAI',			'zoEtcR5EW08',			N'SƠN TÙNG M-TP'),
(N'SƠN TÙNG M-TP | CHÚNG TA CỦA HIỆN TẠI',			'psZ1g9fMfeo',			N'SƠN TÙNG M-TP'),
(N'Sau lời từ khước (OST MAI) | Phan Mạnh Quỳnh',	'mzqvF_rIOx8',			N'Phan Mạnh Quỳnh'),
(N'Stereo love remix Vinahouse - Levis x HT Music',	'2PIm847eqa8',			N'Edward Maya & Vika Jigulina')

go

insert into history(userId,videoId,isliked,likedDate) values
(2,		4,		1,		getDATE()),
(2,		3,		0,		null)
go