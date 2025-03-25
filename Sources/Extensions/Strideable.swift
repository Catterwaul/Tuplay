public extension Strideable {
  /// Step from a starting value, by the specified amount, to fill a tuple.
  /// - Parameters:
  ///   - start: The starting value to use for the tuple. If the tuple
  ///     contains any values, the first one is `start`.
  ///   - stride: The amount to step by with each iteration. A positive `stride`
  ///     iterates upward; a negative `stride` iterates downward.
  ///   - shape: The shape of the tuple. There is unfortunately not yet a way to use this function without this parameter.
  static func stride<each Element>(
    from start: Self = 0,
    by stride: Stride = 1,
    shape: (repeat each Element).Type
  ) -> (repeat Each<Self, each Element>) {
    var value = start
    return (repeat { _ in
      defer { value = value.advanced(by: stride)}
      return value
    } ((each Element).self))
  }
}
