import UIKit

//struct, class, enum

/*struct
 struct StructName{
    properties
    methods
    initializers
 }
 */

struct Person{ //memberwise initializer
    var name: String
    var age: Int
    
    func speak(){
        print("Hello")
    }
}

let person = Person(name: "John", age: 30)
person.name
person.age
person.speak()

var p = person //value type
p.name = "Kim"
person.name
p.name

/*
 class ClassName{
    properties(Stored properties, type properties, computed properties)
    methods(instance methods, type methods)
    initializers
 deinitializers
}
 */

class PersonClass{ //reference type
    var name: String //stored properties
    var age: Int
    var nextYearAge: Int{ //computed properties
        get{ age + 1 }
        set{ age = newValue - 1 } //newValue is the default set value
    }
    init(name: String, age: Int){ //designated initializer
        self.name = name
        self.age = age
    }
    
    func speak(){ //instance method
        print("Class Hello!")
    }
    
    func speakType1(){ //type method
        print("Type method 1.")
    }
    
    func speakType2(){ //type method
        print("Type method 2.")
    }
}

let p2 = PersonClass(name: "Jane", age: 30)

var p3 = p2
p3.name = "EM"
p2.name
p3.name

p2.nextYearAge
p2.nextYearAge = 100
p2.speakType1()
p2.speakType2()

/*
 enum: a group of related values
 
 enum TypeNaame{
    case caseName
    case caseName, caseName
 
    properties
    methods
    initializers
 }
 */


//let left = "left"
//let center = "center"
//let right = "right"
//
//let alignment = center
//
//if alignment == "center"{
//    print("center")
//}

enum Alignment{
    case left
    case center
    case right
}

let leftAlign = Alignment.left
