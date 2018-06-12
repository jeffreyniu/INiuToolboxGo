package models

//DateTimeFormat is date time format used by java script
const DateTimeFormat string="2018-06-10T18:10:20+08:00"

//ternary is a method to simulate ternary operator.
func ternary(condition bool, trueVal, falseVal interface{}) interface{} {
    if condition {
        return trueVal
    }
    return falseVal
}

//TableName is a method to return table name.
func TableName(name string) string {
	return name
}