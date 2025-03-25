/// Expands a type to the shape of a pack.
///
/// By itself, this is just `Value`.
/// But it can be used to represent "`(repeat each Value)`",
/// which can't actually be represented in Swift yet.
/// This type alias is the workaround for that unimplemented feature.
///
/// Its usage will look like
/// ```swift
/// (repeat Each<Value, each Element>)
/// ```
public typealias Each<Value, each Element> = Value

// MARK: - Tuple

/// A 2-tuple.
public typealias Tuple2<Element0, Element1> = (Element0, Element1)

/// A 3-tuple.
public typealias Tuple3<Element0, Element1, Element2> = (Element0, Element1, Element2)

/// A 4-tuple.
public typealias Tuple4<Element0, Element1, Element2, Element3> = (Element0, Element1, Element2, Element3)

// MARK: - Vectuple

/// A homogeneous 2-tuple.
public typealias Vectuple2<Element> = (Element, Element)

/// A homogeneous 3-tuple.
public typealias Vectuple3<Element> = (Element, Element, Element)

/// A homogeneous 4-tuple.
public typealias Vectuple4<Element> = (Element, Element, Element, Element)

/// A homogeneous 5-tuple.
public typealias Vectuple5<Element> = (Element, Element, Element, Element, Element)

/// A homogeneous 6-tuple.
public typealias Vectuple6<Element> = (
  Element, Element, Element, Element, Element,
  Element
)

/// A homogeneous 7-tuple.
public typealias Vectuple7<Element> = (
  Element, Element, Element, Element, Element,
  Element, Element
)

/// A homogeneous 8-tuple.
public typealias Vectuple8<Element> = (
  Element, Element, Element, Element, Element,
  Element, Element, Element
)

/// A homogeneous 9-tuple.
public typealias Vectuple9<Element> = (
  Element, Element, Element, Element, Element,
  Element, Element, Element, Element
)

/// A homogeneous 10-tuple.
public typealias Vectuple10<Element> = (
  Element, Element, Element, Element, Element,
  Element, Element, Element, Element, Element
)
