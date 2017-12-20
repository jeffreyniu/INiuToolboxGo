package models

import (
	"encoding/json"
)

//NotiMessage is a notification message model
type NotiMessage struct {
	Type    string
	Elapsed string
	Msg     string
}

//GetNotiMessages is used to get notification messages
func GetNotiMessages() ([]NotiMessage, error) {
	data := []byte(`[{"Type":"bolt","Elapsed":"Just Now","Msg":"Server #3 overloaded"},
		{"Type":"bell","Elapsed":"34 mins","Msg":"Server #10 not responding"},
		{"Type":"plus","Elapsed":"3 hrs","Msg":"New user registered"},
		{"Type":"bullhorn","Elapsed":"Just Now","Msg":"Application error"}]`)
	var msgs []NotiMessage
	err := json.Unmarshal(data, &msgs)
	return msgs, err
}
