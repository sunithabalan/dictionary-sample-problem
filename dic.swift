var students = [
    1: ["John", "Mark"],
    2: ["Doe", "Mark"],
    3: ["Alex", "Mark"]
]
var studmark = [ "John,1,90,80,50", "Doe,2,60,90,80","Alex,3,70,90,80"]
for i in studmark
{
    let v = i 
    let arrsplit = v.components(separatedBy:  ",")
    let arr = arrsplit[2 ..< arrsplit.endIndex]//slicing the array to get the marks
    let intarr = arr.map{Int($0)!}
    let total = intarr.reduce(0,+)
    var tot = total / 3
    var per = String(tot)
    var upd = [arrsplit[0],per]
 
    let keyval = Int(arrsplit[1]) ?? 0

    students[keyval] = upd
}
print(students)
