import UIKit

func sayHello(){
    
}
let a: () -> () = sayHello //Function Type Notation

func sayHello(with name: String){
    
}
let b = sayHello(with:) //Function Type Notation

func sayHello(_ name: String){
    
}
let c = sayHello(_:) //Function Type Notation

func add(a: Int, b: Int) -> Int{
    return a + b
}
let d = add(a:b:)

func animate(withDuration: Double, animations: () -> (), someValue: Int, completion: (Bool) -> Void){
    
}

animate(withDuration: 5){
    
}completion:{
    
}

animate(withDuration: 5, animations: <#T##() -> ()#>, someValue: <#T##Int#>, completion: <#T##(Bool) -> Void#>)
