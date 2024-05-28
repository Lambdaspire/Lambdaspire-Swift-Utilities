
/// Returns a modified copy. of a given input.
public func with<T>(_ t: T, _ fn: (inout T) -> Void) -> T {
    var new = t
    fn(&new)
    return new
}

/// Returns the given input, modified.
public func with<T>(_ t: inout T, _ fn: (inout T) -> Void) -> T {
    fn(&t)
    return t
}
