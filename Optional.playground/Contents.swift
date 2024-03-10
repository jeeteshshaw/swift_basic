import Foundation

func multiplyByTwo(_ value: Int? = nil)-> Int {
    if let value{ // let value will check if value is present or nil (nil will run on else)
        return value * 2
    }
    else{
        return 0
    }
   
}


multiplyByTwo()
multiplyByTwo(nil)
multiplyByTwo(4)


let age: Int? = nil
if age != nil {
    "Age is there"
}
else{
    "Age is nill"
}

if let age{
    "Age is there how odd \(age)"
}
else{
    "Age is nill"
}


func checkAge() {
//    if age == nil{
//        "age is nil"
//        return
//    }
    guard age != nil else {
        "Age is nil as expected"
        return
    }
    "age is not nil"
}

checkAge()


let age2: Int? = 0

func checkAge2() {
    guard let age2 else {
        "Age is nil as expected"
        return
    }
    "Age is not nil value is \(age2)"
}
checkAge2()


switch age {
    
case .none:
    "Age is nil"
    break
case let .some(value):
    "Age has some value \(value)"
    break
}


if age2 == 0 {
    "age is 10 as expected"
}
else{
    "age is not 10"
}

// option value create
if age2 == .some(0) {
    "age is 10 as expected"
}
else{
    "age is not 10"
}


struct Person {
    let name: String
    let address: Address?
    struct Address {
        let firstLine: String?
    }
}


let foo: Person = Person(
    name: "foo",
    address: nil
)


if let fooFirstAddressLine  = foo.address?.firstLine {
    fooFirstAddressLine
}else{
    "foo doesn't have an address with first line. as expected"
}


if let fooAddress = foo.address,
   let firstLine = fooAddress.firstLine {
    fooAddress
    firstLine
}


let bar: Person? = Person(
    name: "Bar", address: Person.Address(firstLine: nil)
)

if bar?.name == "Bar",
   bar?.address?.firstLine == nil {
    "bar's name is bar and has no first line of address"
} else {
    "Seems like something isn't working right!"
}



let baz: Person? = Person(
    name: "Baz", address: Person.Address(firstLine: "Baz first line")
)

switch baz?.address?.firstLine {
case let .some(firstLine) where firstLine.starts(with: "Baz"):
    "baz first address line = \(firstLine)"
case let .some(firstLine):
    "baz first address line that didn't match the previous case"
    firstLine
case .none:
    "baz first address line is nill?? is weird"
}


func getFullName(
    firstName: String,
    lastName: String?
) -> String? {
    if let lastName {
        return "\(firstName) \(lastName)"
    }
    else {
        return nil
    }
}

getFullName(firstName: "hello", lastName: nil)
getFullName(firstName: "hello", lastName: "world")


func getFullName2(
    firstName: String,
    lastName: String?
) -> String? {
    guard let lastName else {
        return nil
    }
    return "\(firstName) \(lastName)"
}
