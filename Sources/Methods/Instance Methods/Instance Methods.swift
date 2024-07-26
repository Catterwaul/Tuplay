/// Adds an element to the end of a tuple.
@inlinable public func appending<each Element, Last>(
  _ prefix: (repeat each Element)
) -> (_ last: Last) -> (repeat each Element, Last) {
  { last in (repeat each prefix, last) }
}

/// Call multiple functions on one input.
/// - Bug: This overload should not be necessary, but the compiler crashes
/// when trying to use the other similar one when `Error` would be `Never`,
/// which is the special case represented by this error-less signature.
@_documentation(visibility: private)
@inlinable public func callAsFunction<Input, each Transformed>(
  _ transform: (repeat (Input) -> each Transformed)
) -> (Input) -> (repeat each Transformed) {
  { (repeat (each transform)($0)) }
}

/// Call multiple functions on one input.
@inlinable public func callAsFunction<Input, each Transformed, Error>(
  _ transform: (repeat (Input) throws(Error) -> each Transformed)
) -> (Input) throws(Error) -> (repeat each Transformed) {
  { (repeat try (each transform)($0)) }
}

/// Repeat a value to match the shape of a tuple.
/// - Parameters:
///   - tuple: The tuple that defines how many `values` will be returned.
@inlinable public func `repeat`<each Element, Value>(
  _ tuple: (repeat each Element)
) -> (Value) -> (repeat Repeat<Value, each Element>) {
  { `repeat`((repeat each Element).self, $0) }
}