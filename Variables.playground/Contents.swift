import Foundation
// here stucture is same as js every thing objects
// here a=b will create  value copy of b anbd assign it to a.
// let is inmutable and var is mutable.

let myName = "jeetesh"
let yourName = "jesnal"

//yourName = "vg" // it's error

var name = [
myName,
yourName
]
name.append("bar")

//but we can change it like this it's similar to objective C.
let oldArray = NSMutableArray(
    array: [
    "foo",
    "ho"
    ]
)
oldArray.add("test")

var newArr = oldArray
newArr.add("failed")
oldArray
newArr



let sampleArray = NSMutableArray(
    array: [
    "foo",
    "ho"
    ]
)

//funtion

func changeTheArray(_ array: NSArray){
    let copy = array as! NSMutableArray
    copy.add("bad code")
}

changeTheArray(sampleArray)
sampleArray



