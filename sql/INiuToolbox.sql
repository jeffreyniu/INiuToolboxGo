#create schema
create schema if not exists INiuToolbox;

use INiuToolbox;
#create table calendar_events
create table if not exists calendar_events(
ID int primary key not null auto_increment,
Title nvarchar(1000),
StartDate datetime,
EndDate datetime,
AllDay bool,
Url nvarchar(5000),
ClassName nvarchar(100)
); 


DELIMITER //
#create procedure sp_add_calendar_event
drop procedure if exists sp_add_calendar_event//
create procedure sp_add_calendar_event(
IN pTitle nvarchar(1000),
IN pStartDate datetime,
IN pEndDate datetime,
IN pAllDay bool,
IN pUrl nvarchar(5000),
IN pClassName nvarchar(100),
OUT pID int
)
begin

insert into calendar_events(Title,StartDate,EndDate,AllDay,Url,ClassName) values(
pTitle,pStartDate,pEndDate,pAllDay,pUrl,pClassName);

set pID= last_insert_id();

end//

#create procedure sp_update_calendar_event
drop procedure if exists sp_update_calendar_event//
create procedure sp_update_calendar_event(
IN pID int,
IN pTitle nvarchar(1000),
IN pStartDate datetime,
IN pEndDate datetime,
IN pAllDay bool,
IN pUrl nvarchar(5000),
IN pClassName nvarchar(100)
)
begin

update calendar_events
set Title=pTitle,
	StartDate=pStartDate,
	EndDate=pEndDate,
	AllDay=pAllDay,
	Url=pUrl,
	ClassName=pClassName
where ID=pID;

end//

#create procedure sp_delete_calendar_event
drop procedure if exists sp_delete_calendar_event//
create procedure sp_delete_calendar_event(
IN pID int
)
begin

delete from calendar_events where ID=pID;

end//
DELIMITER ;