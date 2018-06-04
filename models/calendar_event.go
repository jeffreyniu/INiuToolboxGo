package models

import (
	"time"
)

//CalendarEvent is a calendar event model
type CalendarEvent struct {
	ID    int
	Title string
	Start time.Time
	End	time.Time
	Allday bool
	URL string
	ClassName string
}

//GetCalendarEvents is used to get calendar events
func GetCalendarEvents() (string, error) {
	data := `[{
		"id":"1",
		"title": "All Day Event,This is a long title",
		"start": "2018-06-01T00:00:00+08:00",
		"end":"2018-06-01T24:00:00+08:00",
		"allday":"true",
		"url":"",
		"className": "label label-default"
	}, {
		"id":"2",    
		"title": "Long Event",
		"start": "2018-06-01T00:00:00+08:00",
		"end": "2018-06-04T00:00:00+08:00",
		"allday":"false",
		"url":"",
		"className": "label label-success"
	}, {
		"id":"3",
		"title": "Repeating Event",
		"start": "2018-06-01T16:00:00+08:00",
		"end":"2018-06-02T16:00:00+08:00",
		"allday":"false",
		"url":"",
		"className": "label label-default"
	}, {
		"id":"4",
		"title": "Repeating Event",
		"start": "2018-06-08T16:00:00+08:00",
		"end":"2018-06-09T16:00:00+08:00",
		"allday":"false",
		"url":"",
		"className": "label label-important"
	}, {
		"id":"5",      
		"title": "Click for baidu",
		"start": "2018-06-28T16:00:00+08:00",
		"end": "2018-06-29T16:00:00+08:00",
		"allday":"false",
		"url": "http://www.baidu.com/",
		"className": "label label-warning"
	}]`

	return data, nil
}
