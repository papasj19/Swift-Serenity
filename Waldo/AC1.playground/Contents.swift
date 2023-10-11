let whereIsWaldo = ["Whitebeard", "Wood", "Whitebeard", "Wilma", "Wilma", "Wood", "Whitebeard", "Whitebeard", "Wilma", "Wilma", "Odlaw", "Wilma", "Wood", "Whitebeard", "Whitebeard", "Whitebeard", "Whitebeard", "Wenda", "Wood", "Wood", "Wood", "Wilma", "Whitebeard", "Wilma", "Whitebeard", "Wenda", "Wenda", "Whitebeard", "Odlaw", "Odlaw", "Wenda", "Wenda", "Wood", "Whitebeard", "Whitebeard", "Odlaw", "Wilma", "Whitebeard", "Waldo", "Odlaw"]

var waldoPos = 0
for element in whereIsWaldo{
    waldoPos = waldoPos + 1
    if element == "Waldo" {
        print("Found Waldo at position ", waldoPos, "\n")
    }
}

var myDict : [String: Int] = [:]
for element in whereIsWaldo{
    if myDict[element] == nil{
        myDict[element] = 1
    }else{
        myDict[element] = myDict[element]! + 1
    }
}

let sortedVals = myDict.sorted(by: {$0.value > $1.value})
for element in sortedVals{
    print(element.key, ": #", element.value)
}

let placed = Set(whereIsWaldo)
print("\nThere are ", placed.count, " unique values")
