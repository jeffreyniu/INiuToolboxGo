package routers

import (
	"INiuToolboxGo/controllers"
	"INiuToolboxGo/controllers/contents"

	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/contents/blog", &contents.BlogController{})
	beego.Router("/contents/blog_details", &contents.BlogDetailsController{})
}
