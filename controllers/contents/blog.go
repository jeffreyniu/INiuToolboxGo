package contents

import (
	"github.com/astaxie/beego"
)

type BlogController struct {
	beego.Controller
}

type BlogDetailsController struct {
	beego.Controller
}

func (c *BlogController) Get() {
	c.TplName = "contents/blog.tpl"
}

func (c *BlogDetailsController) Get() {
	c.TplName = "contents/blog_details.tpl"
}
