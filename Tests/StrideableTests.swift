import Testing
import Tuplé

struct StrideableTests {
  @Test func stride() throws {
    let stride = Int.stride(from: 1, by: 2, shape: Vectuple3<Never>.self)
    #expect(stride == (1, 3, 5))
  }
}
