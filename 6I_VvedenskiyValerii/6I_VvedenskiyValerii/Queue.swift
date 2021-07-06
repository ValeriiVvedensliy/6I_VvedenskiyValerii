

struct Queue<T: AnyObject> {
    var items = [T]()
    
    mutating func push(item: T) {
        items.append(item)
    }
    
    mutating func remove(index: Int) -> T {
        items.remove(at: index)
    }
        
    mutating func getArray() -> [T] {
        return items
    }
    
    subscript(index: Int) -> T? {
        get {
            if(idexFound(index: index)){
               return items[index]
            }
            return nil
        }
    }
    
    private func idexFound(index: Int) -> Bool {
        for (idx, _) in items.enumerated() {
            if index == idx {
                return true
            }
        }
        return false
    }
}
