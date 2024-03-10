import Foundation

class Person{
    var name:String
    var age:Int
    // in class we muswt have to create initilizer/constructor(but in struct it's optional)
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    
    func increaseAge() {
        self.age += 1
    }
    
    
    
}

// it's keeps the referance so we can update data of foo even thou it's let varable because it's reference type.
let foo = Person(name: "foo", age: 20)
foo.name
foo.age

foo.increaseAge()
foo.age
foo.age=40
foo.age

let bar = foo
//to do this we need tto define static operator overloading to class property
//if foo == bar{
//    "these are equal"
//}else{
//    "these are not equal"
//}
//=== check if both have same memory
if foo === bar{
    "these are equal"
}else{
    "these are not equal"
}



class Vehical{
    func goVroom(){
        "Vroom Vroom"
    }
}

class Car:Vehical{
    
}

let car = Car()
car.goVroom()

class Person2{
    private(set) var age:Int
    private(set) var name:String
    //designation initizer
    init(age:Int, name:String) {
        self.age = age
        self.name = name
    }
}

let baz = Person2(age: 30, name: "Welcome")

bar.age

//bar.age = 20 //can't do this because it's a private set var
bar.increaseAge()
bar.age


class Tesla {
    let manufacturer: String = "Tesla"
    let model: String
    let year: Int
    //designation initializer
    init() {
        self.model = "X"
        self.year = 2024
    }
    init(model:String, year:Int) {
        self.model = model
        self.year = year
    }
    
    //convenience
    convenience init(model:String){
        self.init(model: model, year: 2024)
    }
}


class TeslaModelY:Tesla{
//    overriding the Tesla class initializer
    override init(){
        //designation in sub class can't call convenience initializer
        super.init(model: "Y", year: 2024)
    }
    
    deinit{
        "destroyed/ deinitialized"
    }
}


let modelY = TeslaModelY()

modelY.model
modelY.year
modelY.manufacturer
