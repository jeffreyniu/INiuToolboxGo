package main

import (
	"github.com/astaxie/beego"
	
	_ "INiuToolboxGo/initial"
	_ "INiuToolboxGo/routers"
)

func main() {
	beego.Run()
}

