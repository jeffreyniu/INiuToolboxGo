package models

import (
	"time"
	"fmt"
	"strings"
	"strconv"
	"github.com/astaxie/beego" 
 	"github.com/astaxie/beego/orm" 
)

//CalendarEvent is a calendar event model
type CalendarEvent struct {
	ID    			int64 		`orm:"pk;column(ID);"`
	Title 			string 		`orm:"column(Title);"`
	Start 			time.Time 	`orm:"column(Start);"`
	End				time.Time 	`orm:"column(End);"`
	Allday 			bool 		`orm:"column(Allday);"`
	URL 			string 		`orm:"column(URL);"`
	ClassName 		string 		`orm:"column(ClassName);"`
	Enabled 		bool 		`orm:"column(Enabled);"`
	CreatedDate 	time.Time 	`orm:"column(CreatedDate);"`
	LastUpdatedDate time.Time 	`orm:"column(LastUpdatedDate);"`
}

//TableName is a function to mapping to database table.
func (u *CalendarEvent) TableName() string{
	return TableName("calendarevent")
}

func init(){
	orm.RegisterModel(new(CalendarEvent))
}

//GetCalendarEvent is a function to get calendar event by id.
func GetCalendarEvent(id int64)(CalendarEvent,error){
	o:=orm.NewOrm()
	o.Using("default")
	ce:=CalendarEvent{ID:id}
	err:=o.Read(&ce);
	return ce,err
}

//UpdateCalendarEvent is a function to update calendar event by id.
func UpdateCalendarEvent(id int64, event CalendarEvent) error{
	o:=orm.NewOrm()
	o.Using("default")
	ce:=CalendarEvent{ID:id}

	ce.Title=event.Title
	ce.Start=event.Start
	ce.End=event.End
	ce.Allday=event.Allday
	ce.URL=event.URL
	ce.ClassName=event.ClassName
	ce.LastUpdatedDate=time.Now()

	_,err:=o.Update(&ce,"Title","Start","End",
		"Allday","URL","ClassName","LastUpdatedDate")

	return err
}

//AddCalendarEvent is a function to add calendar event.
func AddCalendarEvent(event CalendarEvent) (int64,error){
	o:=orm.NewOrm()
	o.Using("default")
	ce:=new(CalendarEvent)

	ce.Title=event.Title
	ce.Start=event.Start
	ce.End=event.End
	ce.Allday=event.Allday
	ce.URL=event.URL
	ce.ClassName=event.ClassName
	ce.Enabled=event.Enabled
	ce.CreatedDate=time.Now()
	ce.LastUpdatedDate=time.Now()

	id,err:=o.Insert(ce)

	return id,err
}

//DeleteCalendarEvent is a function to add calendar event.
func DeleteCalendarEvent(id int64) error{
	o:=orm.NewOrm()
	o.Using("default")
	ce:=CalendarEvent{ID:id}

	ce.Enabled=false
	ce.LastUpdatedDate=time.Now()

	_,err:=o.Update(&ce,"Enabled","LastUpdatedDate")

	return err
}

//ListCalendarEvents is a function to get calendar events.
func ListCalendarEvents(condArr map[string] string,page int64,offset int64)(int64, []CalendarEvent, error){
	o:=orm.NewOrm()
	o.Using("default")

	/*var maps []orm.Params
	id, _ := o.Raw("SELECT id FROM CalendarEvent").Values(&maps)
	if id > 0 {
		fmt.Println(maps[0]["id"])
	}*/

	qs:=o.QueryTable(TableName("calendarevent"))
	
	cond:=orm.NewCondition()

	if(condArr["Start"]!=""){
		cond=cond.And("Start__gte",condArr["Start"])
	}

	if(condArr["End"]!=""){
		cond=cond.And("End__lte",condArr["End"])
	}

	if(condArr["Enabled"]!=""){
		cond=cond.And("Enabled",condArr["Enabled"])
	}

	qs = qs.SetCond(cond) 
	if page < 1 { 
		page = 1 
 	} 
	if offset < 1 { 
		offset, _ = beego.AppConfig.Int64("pageoffset") 
 	} 
 	qs = qs.OrderBy("Id") 
	start := (page - 1) * offset 
 	var cevents []CalendarEvent 
	num, err := qs.Limit(offset, start).All(&cevents)

	return num,cevents, err
} 

//CountCalendarEvents is a function to get calendar events count.
func CountCalendarEvents(condArr map[string] string)(int64, error){
	o:=orm.NewOrm()
	o.Using("default")
	qs:=o.QueryTable(TableName("calendarevent"))
	cond:=orm.NewCondition()

	if(condArr["Start"]!=""){
		cond=cond.And("Start__gte",condArr["Start"])
	}

	if(condArr["End"]!=""){
		cond=cond.And("End__lte",condArr["End"])
	}

	if(condArr["Enabled"]!=""){
		cond=cond.And("Enabled",condArr["Enabled"])
	}

	num,err := qs.SetCond(cond).Count() 
	
	return num, err
}

//SerializeCalendarEvents is used to serialize calendar events.
/*	template
	data = `[{
		"id":"1",
		"title": "All Day Event,This is a long title",
		"start": "2018-06-01T00:00:00+08:00",
		"end":"2018-06-01T24:00:00+08:00",
		"allday":"true",
		"url":"",
		"className": "label label-default"
	},{
		"id":"5",      
		"title": "Click for baidu",
		"start": "2018-06-28T16:00:00+08:00",
		"end": "2018-06-29T16:00:00+08:00",
		"allday":"false",
		"url": "http://www.baidu.com/",
		"className": "label label-warning"
	}]`
*/
func SerializeCalendarEvents(ces []CalendarEvent) (string, error) {
	data:=`[`

	for i,item := range ces{
		if i==0{
			data+=`{`			
		} else{
			data+=`,{`				
		}
		data+=strings.Join([]string{
			`"id":"`+strconv.FormatInt(item.ID,10)+`"`,
			`"title":"`+item.Title+`"`,
			`"start":"`+item.Start.Format(DateTimeFormat)+`"`,
			`"end":"`+item.End.Format(DateTimeFormat)+`"`,
			`"allday":"`+ternary(item.Allday,`true`,`false`).(string)+`"`,
			`"url":"`+item.URL+`"`,
			`"className":"`+item.ClassName+`"`},",")	
		data+=`}`
	}

	data+=`]`

	fmt.Println(data)

	return data, nil
}