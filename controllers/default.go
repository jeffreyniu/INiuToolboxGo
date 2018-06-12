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
	
	var condArr map[string] string
	num,ces,err:=models.ListCalendarEvents(condArr,0,0)
	if err==nil && num>0 {
		events, err1 := models.SerializeCalendarEvents(ces)
		if err1 == nil {
			c.Data["calendar_events"] = events
		}
	} else {
		c.Data["calendar_events"]=""
	}
}

//Get MainController
func (c *MainController) Get() {
	c.TplName = "index.tpl"
}
