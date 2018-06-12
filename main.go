package main

import (
	"github.com/astaxie/beego"
	
	_ "INiuToolboxGo/models"
	_ "INiuToolboxGo/initial"
	_ "INiuToolboxGo/routers"
)

func main() {
	beego.Run()
}

