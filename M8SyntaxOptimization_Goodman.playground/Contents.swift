import UIKit

let arr = [1,2,3,4,5,6,7,8,9,10]
var result = arr.filter({(num: Int) -> Bool in
    return num.isMultiple(of: 2)
})
print(result)

result = arr.filter({(num) -> Bool in
    return num.isMultiple(of: 2)
})
print(result)

result = arr.filter({
    return $0.isMultiple(of: 2)
})
print(result)

result = arr.filter({ $0.isMultiple(of: 2)}) //implicit return, inline closure
print(result)

result = arr.filter(){$0.isMultiple(of: 2)} //trailing closure
print(result)

//Task1
let cast = ["Vivian", "Marlon", "Kim", "Karl"]
var a = cast.filter({(name: String) -> Bool in
    return name.count < 5
})
print(a)
a = cast.filter({(name) in
  return name.count < 5
})
print(a)
a = cast.filter({
    return $0.count < 5
})
print(a)
a = cast.filter({ $0.count < 5})
print(a)
a = cast.filter { $0.count < 5}
print(a)

//Task2
let cast2 = ["Vivian", "Marlon", "Kim", "Karl"]
var b = cast2.contains(where: {(name: String) -> Bool in
    return name.hasPrefix("V")
})
print(b)

b = cast2.contains(where: {(name) in
    return name.hasPrefix("V")
})
print(b)

b = cast2.contains(where: {
    return $0.hasPrefix("V")
})
print(b)

b = cast2.contains(where: ){ $0.hasPrefix("V") }
print(b)

b = cast2.contains{ $0.hasPrefix("V")} //Trailing closure
print(b)
