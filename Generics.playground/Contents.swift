import Foundation

//func perform(
//    _ op:(Int, Int) -> Int,
//    on lhs: Int,
//    and rhs: Int
//) -> Int {
//    op(lhs, rhs)
//}


// we want our function to support int, float, double and other numaric type so we can do this

func perform<N: Numeric>(
    _ op:(N, N) -> N,
    on lhs: N,
    and rhs: N
)-> N{
    op(lhs, rhs)
}

perform(+, on: 10, and: 20)
perform(-, on: 10, and: 20)
perform(*, on: 10, and: 20)
perform(/, on: 20, and: 10)

let result = perform(+, on: 10.1, and: 5.0)
type(of: result)

let result2 = perform(+, on: 10.1, and: 5)
type(of: result)


func perform2<N>(
    _ op:(N, N) -> N,
    on lhs: N,
    and rhs: N
)-> N where N: Numeric{ // where is a clouse. it will be same as above
    op(lhs, rhs)
}


perform2(+, on: 10, and: 20)
perform2(-, on: 10, and: 20)
perform2(*, on: 10, and: 20)
perform2(/, on: 20, and: 10)



protocol CanJump{
    func jump()
}

protocol CanRun{
    func run()
}

struct Person: CanJump, CanRun{
    func jump() {
        "Jumping..."
    }
    func run() {
        "Running..."
    }
}

func jumpAndRun<T: CanJump & CanRun>(value: T){
    value.jump()
    value.run()
}

let person = Person()

jumpAndRun(value: person)

let name: Array<String> = ["Foo", "Bar"]

//extension with generic

//old way
//extension Array where Element == String{
//
//}

//new way
extension [String] {
    func longestString()-> String? {
        self.sorted { (lhs: String, rhs: String) -> Bool in
            lhs.count > rhs.count
        }.first
    }
}

[
    "foo",
    "bar bas",
    "qus"
].longestString()

//associated
//generic protocal


protocol View{
    func addSubView(_ view: View)
}

extension View{
    func addSubView(_ view: View){
        //empty
    }
}

struct Button: View{
    //empty
}
struct Table: View{
    //empty
}


protocol PresentableAsView {
    associatedtype ViewType: View
    func produceView()-> ViewType
    func configure(
        superView:View,
        thisView:ViewType
    )
    func present(
        view: ViewType,
        on superView: View
    )
}


extension PresentableAsView{
    func configure(
        superView:View,
        thisView:ViewType
    ){
        // empty function
    }
    func present(
        view: ViewType,
        on superView: View
    ){
        superView.addSubView(view)
    }
}


struct MyButton: PresentableAsView{
    func produceView() -> Button {
        Button()
    }
    func configure(superView: View, thisView: Button) {
            
    }
    func present(view: Button, on superView: View) {
        
    }
}


extension PresentableAsView where ViewType == Button {
    func doSomethingWithButton(){
        "this is a button"
    }
}

let button = MyButton()

button.doSomethingWithButton()


struct MyTable: PresentableAsView{
    func produceView() -> Table {
        Table()
    }
    
    
}

let table = MyTable()

//table.doSomethingWithButton()//will give error

extension [Int] {
    func avarage()-> Double {
        Double(self.reduce(0, +)) / Double(self.count)
    }
}

[1, 2, 3, 4].avarage()
