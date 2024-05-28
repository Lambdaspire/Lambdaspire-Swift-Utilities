
/// Like map for non-sequence types.
public func use<TIn, TOut>(_ t: TIn, fn: (TIn) -> TOut) -> TOut { fn(t) }
