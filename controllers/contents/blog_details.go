package contents

import (
	"INiuToolboxGo/controllers"
)

//BlogDetailsController
type BlogDetailsController struct {
	controllers.MainController
}

//Get Blog Detail
func (c *BlogDetailsController) Get() {
	c.TplName = "contents/blog_details.tpl"
}
