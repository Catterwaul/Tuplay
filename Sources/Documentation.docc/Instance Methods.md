# Instance Methods

Functions that would be instance methods if tuples could be extended.

## 

Some of the functions in this package should be considered "instance methods". If tuples were a named type, we could extend them with real methods that incorporate dot syntax.

For example, to add 1 to a tuple of integers, we'd *like* to be able to write:  

```swift
let tuple = (1, 2, 3)
tuple.map { $0 + 1 }
```

…but the best we can do is:

```swift
map(tuple)() { $0 + 1 }
```

#### Recommended Mental Model for "Tuple Instance Methods": Unsugared Instance Methods 

Say that we want to use [`map`](https://developer.apple.com/documentation/swift/collection/map(_:)) on an `Int Array`. Because `Array` is a named type, Swift provides that functionality using this syntax: 

```swift
[1, 2, 3].map { $0 + 1 }
```

But this is sugar for what's really going on. Swift's *instance* methods are actually *type* methods, which accept an instance as their argument, and return a closure. We typically think of this closure as the instance method itself.  

To illustrate this, here's an `Array` extension:

```swift
extension Array {
  func method() { }
}
```

You'd normally call that using this syntax:

```swift
let instance = [1, 2, 3]
instance.method()
```

But it's also available as a `static` method, on `Array`, and can alternatively be called like this: 

```swift
Array.method(instance)()
```

`map` from the standard library can similarly be called like so: 

```swift
Array.map(instance)() { $0 + 1 }
```

That's how the package authors think about the functions cataloged below.

- Note: It's unfortunately not possible to remove the "`()`" before trailing closures without access to **real** instance methods. The limitation has been logged as a bug for years.  


## Topics

- ``appending(_:)``
- ``prepending(_:)``
- ``callAsFunction(_:)``
- ``repeat(_:)``

### forEach
- ``forEach(_:)``
- ``forEach(_:_:)``

### map
- ``map(_:)-9rz4b``
- ``map(_:)-138ae``
- ``map(_:)-3zcxi``
