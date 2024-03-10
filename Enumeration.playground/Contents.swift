import Foundation

enum Animals {
//    case cat
//    case dog
//    case rabbit
    case cat, dog, rabbit
}

let cat = Animals.cat
switch cat {
case .cat:
    "this is cat"
    break
case .dog:
    "this is dog"
    break
//case .rabbit:
//    break
default:
    "this is something else"
    break
}


enum Shortcuts{
    case fileOrFolder(path:URL, name:String)
    case wwwUrl(path:URL)
    case song(artist:String, songName:String)
}

let wwwApple = Shortcuts.wwwUrl(path: URL(string: "https://apple.com")!)

//default way editor give us
switch wwwApple{

case .fileOrFolder(path: let path, name: let name):
    path
    name
    break
case .wwwUrl(path: let path):
    path
    break
case .song(artist: let artist, songName: let songName):
    artist
    songName
    break
}


//we can remove the labels
switch wwwApple{

case .fileOrFolder( let path, let name):
    path
    name
    break
case .wwwUrl( let path):
    path
    break
case .song( let artist, let songName):
    artist
    songName
    break
}

//we can remove the labels also remove let from all the variable and can write it after typing case
switch wwwApple{

case let .fileOrFolder(path, name):
    path
    name
    break
case let .wwwUrl(path):
    path
    break
case let .song(artist, songName):
    artist
    songName
    break
}


if case let .wwwUrl(path) = wwwApple{
    path
}


// indirect enum

indirect enum IntOperation{
    case add(Int, Int)
    case subtract(Int, Int)
    case freeHand(IntOperation)
    
    func calculateResult(
        of operation: IntOperation? = nil
    )-> Int{
        switch operation ?? self{
        case let .add(lhs, rhs):
            return lhs+rhs
        case let .subtract(lhs, rhs):
            return lhs-rhs
        case let .freeHand(operation):
            return calculateResult(of: operation)
        }
    }
}


let freeHand = IntOperation.freeHand(.add(20,30))
freeHand.calculateResult()
