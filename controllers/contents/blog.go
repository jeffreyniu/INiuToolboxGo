package contents

import (
	"INiuToolboxGo/controllers"
)

//BlogController
type BlogController struct {
	controllers.MainController
}

//Get blog list
func (c *BlogController) Get() {
	c.TplName = "contents/blog.tpl"
}
