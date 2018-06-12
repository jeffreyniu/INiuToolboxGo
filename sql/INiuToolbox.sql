#create schema
create schema if not exists INiuToolbox;

use INiuToolbox;
#create table CalendarEvent
#drop table CalendarEvent;
create table if not exists CalendarEvent(
ID int primary key not null auto_increment,
Title nvarchar(1000),
Start datetime,
End datetime,
AllDay bool,
Url nvarchar(5000),
ClassName nvarchar(100),
Enabled bool,
CreatedDate timestamp,
LastUpdatedDate timestamp
); 

insert into CalendarEvent(Title,Start,End,AllDay,Url,ClassName,Enabled,CreatedDate,LastUpdatedDate)
values('test event','2018-06-12 12:00:00','2018-06-12 14:00:00',false,'','label label-default',
true,current_timestamp(),current_timestamp());

DELIMITER //
#create procedure sp_add_calendar_event
drop procedure if exists sp_add_calendar_event//
create procedure sp_add_calendar_event(
IN pTitle nvarchar(1000),
IN pStart datetime,
IN pEnd datetime,
IN pAllDay bool,
IN pUrl nvarchar(5000),
IN pClassName nvarchar(100),
OUT pID int
)
begin

insert into CalendarEvent(Title,Start,End,AllDay,Url,ClassName,Enabled,CreatedDate,LastUpdatedDate) values(
pTitle,pStart,pEnd,pAllDay,pUrl,pClassName,true,current_timestamp(),current_timestamp());

set pID= last_insert_id();

end//

#create procedure sp_update_calendar_event
drop procedure if exists sp_update_calendar_event//
create procedure sp_update_calendar_event(
IN pID int,
IN pTitle nvarchar(1000),
IN pStart datetime,
IN pEnd datetime,
IN pAllDay bool,
IN pUrl nvarchar(5000),
IN pClassName nvarchar(100)
)
begin

update CalendarEvent
set Title=pTitle,
	Start=pStart,
	End=pEnd,
	AllDay=pAllDay,
	Url=pUrl,
	ClassName=pClassName,
    LastUpdatedDate=current_timestamp()
where ID=pID;

end//

#create procedure sp_delete_calendar_event
drop procedure if exists sp_delete_calendar_event//
create procedure sp_delete_calendar_event(
IN pID int
)
begin

update CalendarEvent
set Enabled=false,
    LastUpdatedDate=current_timestamp()
where ID=pID;

end//
DELIMITER ;