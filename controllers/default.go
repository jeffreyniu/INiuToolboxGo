package controllers

import (
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context"
)

//MainController
type MainController struct {
	beego.Controller
}

//Init MainController
func (c *MainController) Init(ct *context.Context, cn string, actionName string, app interface{}) {
	c.Controller.Init(ct, cn, actionName, app)

	c.Data["Email"] = "iniutoolbox@aliyun.com"
	c.Layout = "layout/layout.tpl"
}

//Get MainController
func (c *MainController) Get() {
	c.TplName = "index.tpl"
}
