package models

import (
	"encoding/json"
)

//MailMessage is a mail message model
type MailMessage struct {
	Name    string
	Elapsed string
	Msg     string
}

//GetMailMessages is used to get mail messages
func GetMailMessages() ([]MailMessage, error) {
	data := []byte(`[{"Name":"Dulal Khan","Elapsed":"Just Now","Msg":"Hello, this is an example"},
		{"Name":"Rafiqual Islam","Elapsed":"10 mins","Msg":"Hi, how are you"},
		{"Name":"Sumon","Elapsed":"3 hrs","Msg":"this is awesome dashboard"},
		{"Name":"Dulal","Elapsed":"Just Now","Msg":"Hello buddy"}]`)
	var msgs []MailMessage
	err := json.Unmarshal(data, &msgs)
	return msgs, err
}
