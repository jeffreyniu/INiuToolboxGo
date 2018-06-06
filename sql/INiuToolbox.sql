#create schema
create schema if not exists INiuToolbox;

use INiuToolbox;
#create table calendar_events
#drop table calendar_events;
create table if not exists calendar_events(
ID int primary key not null auto_increment,
Title nvarchar(1000),
StartDate datetime,
EndDate datetime,
AllDay bool,
Url nvarchar(5000),
ClassName nvarchar(100),
Enabled bool,
CreatedDate timestamp,
LastUpdatedDate timestamp
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

insert into calendar_events(Title,StartDate,EndDate,AllDay,Url,ClassName,Enabled,CreatedDate,LastUpdatedDate) values(
pTitle,pStartDate,pEndDate,pAllDay,pUrl,pClassName,true,current_timestamp(),current_timestamp());

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

update calendar_events
set Enabled=false,
    LastUpdatedDate=current_timestamp()
where ID=pID;

end//
DELIMITER ;