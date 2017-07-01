package controllers

import (
	"github.com/astaxie/beego"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	c.Data["Email"] = "iniutoolbox@aliyun.com"
	c.TplName = "index.tpl"
}
