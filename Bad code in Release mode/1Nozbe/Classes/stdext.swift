// dictionary

extension Dictionary {
    func map<U>(f: Element -> U) -> [U] {
        var results = [U]()
        for elem in self {
            results.append(f(elem))
        }
        return results
    }
}

// functional

infix operator |>  { associativity left precedence 150 }
infix operator <^> { associativity left }

func |><A, B>(a: A?, f: A -> B?) -> B? {
    if let a = a {
        return f(a)
    } else {
        return .None
    }
}

func <^><A, B>(f: A -> B, a: A?) -> B? {
    if let a = a {
        return f(a)
    } else {
        return .None
    }
}