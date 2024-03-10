import Foundation

struct Person{
    let name: String
    let age: Int
    let type = "human"
    
    
    //or we can create constructor
//    init(name:String, age:Int){
//        self.name = name
//        self.age = age
//        self.type = "human"
//    }
}

let foo = Person(name: "jesnal", age: 20)


foo.name
foo.age
foo.type




struct Person2{
    let firstName: String
    let lastName: String
    //compute property always use var not let
    var fullName: String {
        "\(firstName) \(lastName)"
    }
//    func printData: {
//        "\(firstName) \(lastName)"
//    }
}


let joo = Person2(firstName: "jesnal", lastName: "js")

joo.firstName
joo.lastName
joo.fullName
