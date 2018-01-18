package models

import (
	"encoding/json"
)

//TodoMessage is a todo message model
type TodoMessage struct {
	Type string
	Date string
	Msg  string
}

//GetTodoMessages is used to get todo messages
func GetTodoMessages() ([]TodoMessage, error) {
	data := []byte(`[{"Type":"default","Date":"Today","Msg":"Weekly Meeting."},
		{"Type":"success","Date":"12.00PM","Msg":"Monthly Status Update."},
		{"Type":"warning","Date":"4 March","Msg":"Upgrage server OS."},
		{"Type":"important","Date":"1 June","Msg":"Weekly technical support report."}]`)
	var msgs []TodoMessage
	err := json.Unmarshal(data, &msgs)
	return msgs, err
}
