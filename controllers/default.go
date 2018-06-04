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

	events, err := models.GetCalendarEvents()
	if err == nil {
		c.Data["calendar_events"] = events
	}
}

//Get MainController
func (c *MainController) Get() {
	c.TplName = "index.tpl"
}
