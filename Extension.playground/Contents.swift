import Foundation

extension Int{
    func plusTwo() ->Int {
        self + 2
    }
}


let two = 1

two.plusTwo()


struct Person{
    var firstName: String
    var lastName: String
}


extension Person{
    init(fullName: String){
        let component = fullName.components(separatedBy: " ")
        self.init(
            firstName: component.first ?? fullName,
            lastName: component.last ?? fullName
        )
    }
}


let person = Person(fullName: "Jesnal js")


protocol GoesVroom {
    var vroomValue: String {get}
    func goVroom() -> String
}


extension GoesVroom {
    func goVroom() -> String {
        "\(self.vroomValue) goes vroom!"
    }
}


struct Car {
    let menufacture: String
    let model: String
}


let modelX = Car(menufacture: "Tesla", model: "X")

extension Car: GoesVroom {
    var vroomValue: String {
        "\(self.menufacture) model name \(self.model)"
    }
}

modelX.goVroom()


class MyDouble {
    let value: Double
    init(value: Double) {
        self.value = value
    }
}

extension MyDouble {
    convenience init(){
        self.init(value: 0)
    }
}


let myDouble = MyDouble()
myDouble.value

extension GoesVroom {
    func goVroomVroomEvenMore () -> String {
        "\(self.vroomValue) is vrooming even more!"
    }
}

modelX.goVroomVroomEvenMore()
