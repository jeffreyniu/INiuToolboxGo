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

	c.Data["mail_msg_count"] = 4

	msgs, err := models.GetMailMessages()
	if err == nil {
		c.Data["mail_msgs"] = msgs
	}
	c.Data["Email"] = "iniutoolbox@aliyun.com"

	c.Layout = "layout/layout.tpl"
}

//Get MainController
func (c *MainController) Get() {
	c.TplName = "index.tpl"
}
