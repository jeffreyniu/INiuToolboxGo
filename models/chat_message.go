package models

import (
	"encoding/json"
)

//ChatMessage is a chat message model
type ChatMessage struct {
	Name string
	Date string
	Msg  string
}

//GetChatMessages is used to get chat messages
func GetChatMessages() ([]ChatMessage, error) {
	data := []byte(`[{"Name":"Dulal Khan","Date":"1:55pm, 13th April 2013","Msg":"Hello, How are you brother?"},
		{"Name":"Rafiqual Islam","Date":"2:01pm, 13th April 2013","Msg":"I'm Fine, Thank you. What about you? How is going on?"},
		{"Name":"Sumon","Date":"2:03pm, 13th April 2013","Msg":"Yeah I'm fine too. Everything is going fine here."},
		{"Name":"Dulal","Date":"2:05pm, 13th April 2013","Msg":"well good to know that. anyway how much time you need to done your task?"}]`)
	var msgs []ChatMessage
	err := json.Unmarshal(data, &msgs)
	return msgs, err
}
