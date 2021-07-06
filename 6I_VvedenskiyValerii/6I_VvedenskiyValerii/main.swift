import Foundation

var queue = Queue<Car>()

queue.push(item: Car("BMW", 2020))
queue.push(item: Car("Subaru", 2010))
queue.push(item: Car("Ford", 2002))
queue.push(item: Car("Audi", 2014))
queue.push(item: Car("Porshe", 2009))

var array = queue.getArray()
printArray(array: array)
var item = queue.remove(index: 1)
print("mark: \(item.mark) year: \(item.year) - sold")

print("value \(String(describing: queue[200]))")


private func printArray(array: [Car]) {
    for item in array {
        print("mark: \(item.mark) year: \(item.year)")
    }
}
