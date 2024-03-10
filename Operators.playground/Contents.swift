import Foundation

let a = 20
let b = 30
let c = a * b

//there are three type of operators

///1.unary prefix: it will working with one value. it will comes before a variable.
let foo = !true // '!' is a unary prefix value
///2.unary postfix: it will working with one value. it will comes after a variable.
let name = Optional("Fooo")
let unaryPostfix = name! // here this '!' will check of there is a value or else it will get the option value
///3.binary infix: it will working with two value
let result = 1 + 2
let name2 = "jesanl" + " " + "js"



//turnery operator

let age = 17

let message: String

if age>=18{
    message = "you are an adult"
}
else{
    message = "you are not an adult"
}


let message2 = age>=18
?"you are an adult"
:"you are nopt yet adult"
