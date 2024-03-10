import Foundation


func FibonaciSeries(
    number value:Int,
    using LoopLogicFun: (Int)-> Array<Int>
    )-> Array<Int>{
//    var series:Array<Int> = []
//    var a = 0;
//    var b = 1;
//
//    for _ in stride(from: 0, to: value, by: 1){
//        series.append(a)
//        b = b + a
//        a = b-a
//    }
    let series = LoopLogicFun(value)
    
    
    return series
}

FibonaciSeries(number: 10){
    (data:Int) in
    var series:Array<Int> = []
       var a = 0;
       var b = 1;
   
       for _ in stride(from: 0, to: data, by: 1){
           series.append(a)
           b = b + a
           a = b-a
       }
    return series
}
