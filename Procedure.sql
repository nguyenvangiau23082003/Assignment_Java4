use asmjava4 

go
select * from [user]
go
create proc sp_selectUsersLikedVideoByVideoHref(@videoHref nvarchar(50))
as 
	begin
		select u.id,u.[password],u.isAdmin,u.isActive,u.username,u.email from [user]  u join history h on u.id = h.userId
		join video v on v.id = h.videoId
		where v.href = @videoHref and u.isActive = 1 and v.isActive = 1 and h.isLiked = 1
	end
go