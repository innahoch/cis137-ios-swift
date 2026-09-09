//: Assignment 3
//:Inna Hoch
//: 9/8/2026

//c2f is the closure name and the left side
//the = signals switch to the right side.
//celsius int is the integar input
//return double has to do with decimals
let c2f={(celsius:Int)-> Double in
    return Double(celsius)*9/5+32
}
//f2c is the closure name and the left side
//the = signals switch to the right side.
//fahrenheit int is the integar input
//return double has to do with decimals
let f2c = { (fahrenheit: Int) -> Double in
    return (Double(fahrenheit) - 32) * 5 / 9
}
//this lambda uses the closer function c2f
let fahrenheit = c2f(25)
print("25°C is \(fahrenheit)°F")
//this lambda uses the closer function f2c
let celsius = f2c(77)
print("77°F is \(celsius)°C")


//func convertTemperature is a higher order function
// the (parenthese) indicate the start of parameters. The temp starts as an integar and then indicates the conversion to be ended as a double
func convertTemperature(_ temperature: Int, using conversion: (Int) -> Double) -> Double {
    return conversion(temperature)
}
//so here is an example of the closure c2f being used by the function above.
let tempInF = convertTemperature(25, using: c2f)
print("25°C = \(tempInF)°F")
//and here is an example of the closure f2c being used by the function above.
let tempInC = convertTemperature(77, using: f2c)
print("77°F = \(tempInC)°C")


//The following four lambdas use the higher order function "convertTemperature". I initially thought I had to make a new higher order function but realized that the higher order function "convertTemperature" applies to any closure function that asks temperatures introduced as integars and returned as double. I just got the actual conversion numbers from the internet.
// this converts celcius into kelvin. o degrees celsius is 273.15 k
let c2k = { (celsius: Int) -> Double in
    return Double(celsius) + 273.15
}
//this converts kelvin into celsius because celsius would subtract 273.15 to yield kelvin
let k2c = { (kelvin: Int) -> Double in
    return Double(kelvin) - 273.15
}
//this converts f into kelvin. Converting it into celsius first is required hence the numbers  as seen in let f2c = { (fahrenheit: Int) -> Double in
//return (Double(fahrenheit) - 32) * 5 / 9
let f2k = { (fahrenheit: Int) -> Double in
    return (Double(fahrenheit) - 32) * 5 / 9 + 273.15
}
//this converts kelvin into f. Converting it into celsius first is required hence the numbers as seen in c2f={(celsius:Int)-> Double in
//return Double(celsius)*9/5+32
let k2f = { (kelvin: Int) -> Double in
    return (Double(kelvin) - 273.15) * 9 / 5 + 32
}
//this one here converts kelvin from celsius using one of the above closure functions c2k.
let kelvin = c2k(0)
print("0°C is \(kelvin)°K")
