package controllers

import (
	"INiuToolboxGo/models"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context"
)

//MainController is a base controller
type MainController struct {
	beego.Controller
}

//Init MainController
func (c *MainController) Init(ct *context.Context, cn string, actionName string, app interface{}) {
	c.Controller.Init(ct, cn, actionName, app)
	c.Layout = "layout/layout.tpl"

	msgs, err := models.GetMailMessages()
	if err == nil {
		c.Data["mail_msg_count"] = len(msgs)
		c.Data["mail_msgs"] = msgs
	}

	notiMsgs, err := models.GetNotiMessages()
	if err == nil {
		c.Data["noti_msg_count"] = len(notiMsgs)
		c.Data["noti_msgs"] = notiMsgs
	}

	chatMsgs, err := models.GetChatMessages()
	if err == nil {
		c.Data["chat_msgs"] = chatMsgs
	}
}

//Get MainController
func (c *MainController) Get() {
	c.TplName = "index.tpl"
}
