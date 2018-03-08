package models

import (
	"encoding/json"
)

//TodoMessage is a todo message model
type TodoMessage struct {
	ID int
	Progress int
	Type string
	Date string
	Msg  string
	Pulsate string
}

//GetTodoMessages is used to get todo messages
func GetTodoMessages() ([]TodoMessage, error) {
	data := []byte(`[{"ID":1,"Progress":10,"Type":"default","Date":"Today","Msg":"Weekly Meeting.","Pulsate":""},
		{"ID":2,"Progress":40,"Type":"success","Date":"12.00PM","Msg":"Monthly Status Update.","Pulsate":""},
		{"ID":3,"Progress":60,"Type":"warning","Date":"4 March","Msg":"Upgrage server OS.","Pulsate":"pulsate-regular"},
		{"ID":4,"Progress":20,"Type":"important","Date":"1 June","Msg":"Weekly technical support report.","Pulsate":"pulsate-regular"}]`)
	var msgs []TodoMessage
	err := json.Unmarshal(data, &msgs)
	return msgs, err
}
