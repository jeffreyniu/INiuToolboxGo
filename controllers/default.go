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

	todoMsgs, err := models.GetTodoMessages()
	if err == nil {
		c.Data["todo_msgs"] = todoMsgs
	}
}

//Get MainController
func (c *MainController) Get() {
	c.TplName = "index.tpl"
}
