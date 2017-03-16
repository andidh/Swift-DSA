import Foundation

//: # Swift Data structures and algorithms
//: ## BIG O NOTATION

//: ### Linear time -> bad when n gets larger
func linearSearch(key: Int, list: [Int]) {
    for num in list {
        if key == num {
            print("\(key) found")
            break
        }
    }
}

//: ### Binary search -> log time
func binarySearch(key: Int, list: [Int], imin: Int, imax: Int) {
    let imid: Double = round(Double(imin + imax)/2)
    let midNumber = list[Int(imid)]
    
    if key < midNumber {
        binarySearch(key: key, list: list, imin: imin, imax: Int(imid - 1))
    }
    
    if key > midNumber {
        binarySearch(key: key, list: list, imin: Int(imid+1), imax: imax)
    }
    
    if key == midNumber {
        print("\(key) found")
    }
}



let list = [1,2,3,4,5,6,10,9]
linearSearch(key: 9, list: list)
binarySearch(key: 6, list: list, imin: 0, imax: list.count-1)