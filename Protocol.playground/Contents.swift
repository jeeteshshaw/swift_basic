import Foundation

// it's like abstract
protocol CanBreath{
    func breath()
}

struct Animal: CanBreath{
    func breath() {
        "Animal Breathing"
    }
}


protocol CanJump{
    func jump()
}

// this will create a default function of so any inherit struct will don't have to create this function it can use it but if he want he can create it's own jump function
extension CanJump{
    func jump() {
        "jumping..."
    }
}

struct Cat: CanJump{
    
}


let whisker = Cat()

whisker.jump()


protocol HasName{
    var name:String { get }
    var age:Int {get set}
}

extension HasName{
    func describeMe()->String{
        "your name is \(name) and your age is \(age)"
    }
    //if try to modifiy data
    mutating func increaseAge(){
        self.age += 1
    }
}

struct Dog: HasName{
    let name: String
    var age:Int
}





var woof = Dog(name: "woof", age: 10)

woof.name
woof.age
woof.age += 1
woof.age
woof.describeMe()
woof.increaseAge()



protocol Vechicle{
    var speed: Int {get set}
    mutating func increaseSpeed(by value: Int)
}

extension Vechicle{
    mutating func increaseSpeed(by value: Int){
        self.speed += value
    }
}


struct Bike: Vechicle{
    var speed:Int
    init(){
        self.speed = 0
    }
}

class BikeClass: Vechicle{
    var speed:Int
    init(){
        self.speed = 0
    }
}


var bike = Bike()
var bikeClass = BikeClass()
bike.speed
bike.increaseSpeed(by: 10)
bike.speed

bikeClass.speed
bikeClass.increaseSpeed(by: 10)
bikeClass.speed

func describe(obj:Any){
    if obj is Vechicle{
        "object conform to the Vechicle protocol"
    }
    else{
        "object not conform to the Vechicle protocol"
    }
}

describe(obj: bike)


func increaseSpeedIfVehicle(obj:Any){
    if var vehicle = obj as? Vechicle{
        vehicle.speed
        vehicle.increaseSpeed(by: 10)
        vehicle.speed
    }
    else{
        "it's not a vehicle"
    }
}

//increaseSpeedIfVehicle(obj: bike)
//bike.speed //ans 10 because it's struct instant
increaseSpeedIfVehicle(obj: bikeClass)
bikeClass.speed
