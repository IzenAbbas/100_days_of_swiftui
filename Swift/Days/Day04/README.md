# Day 4 — Type Annotations and Checkpoint 2

## Type Inference vs Type Annotation

So far, Swift has *inferred* types from the assigned value:

```swift
var score = 0            // inferred as Int
var luck  = "Not really" // inferred as String
```

**Type annotation** explicitly states the type. Use it when:

1. You want a specific type Swift wouldn't infer by default (e.g., `Double` instead of `Int`).
2. You're declaring a variable/constant **without** an initial value.
3. You want to be extra explicit for readability in complex code.

```swift
var score: Int = 0
var albumRating: Double = 10        // forces Double even though "10" alone infers as Int
var playerName: String = "Roy"
var isAuthenticated: Bool = true

var city: String                    // no initial value — MUST have a type annotation
city = "Manchester"                 // assigned later, but before first use
```

---

## Type Annotations for Collections

```swift
var albums: [String]      = ["Red", "1989", "Reputation"]
var user:   [String: String] = ["id": "@twostraws"]
var books:  Set<String>   = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])
```

### Empty Collections Require Type Information

Without an initial value, Swift has nothing to infer from, so you must provide type information one of two ways:

```swift
// Style 1: type annotation + empty literal
var teams: [String] = []

// Style 2: type inferred from generic initializer — cleanest
var teams2 = [String]()

// Style 3: redundant but valid (annotation + typed initializer)
var teams3: [String] = [String]()
```

> **Best practice:** use Style 2 (`[String]()`) for empty collections — it's the most idiomatic Swift.

---

## Enums as Types

Type annotations work with enums too:

```swift
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var selected: Weekday = .monday
// No need to write Weekday.monday — the annotation tells Swift the type
```

---

## `Any` — The Type to Avoid

`Any` can hold literally any type, but throws away Swift's type safety. You lose compile-time checking and must cast at runtime.

```swift
var mixed: [Any] = ["one", 2, true]   // legal, but loses compile-time safety
```

Idiomatic Swift avoids `Any` unless absolutely necessary (e.g., when working with old Objective-C APIs). If you find yourself reaching for `Any`, it's usually a sign the design needs rethinking — consider a protocol, enum with associated values, or generics instead.

---

## ✅ Checkpoint 2

**Challenge:** Create an array of strings, then write code that prints the number of items in the array and also whether a specific string exists in it.

```swift
let fruits: [String] = ["Apple", "Banana", "Cherry", "Mango"]

print("There are \(fruits.count) fruits in the array.")
print("Does it contain Banana? \(fruits.contains("Banana"))")
```

**Extension — using a `Set` for efficient membership checking:**

```swift
let fruitSet: Set<String> = ["Apple", "Banana", "Cherry", "Mango"]
// Set uses a hash table internally, so .contains() runs in O(1)
// regardless of how many items it holds, unlike Array which scans linearly O(n).
print(fruitSet.contains("Mango"))   // true
```

---

## Key Takeaways

- Type annotations (`: Type`) are optional when Swift can infer the type, but required for uninitialized variables.
- To force a `Double` from an integer literal, annotate: `var rating: Double = 10`.
- Empty collection literals `[]` require either an annotation or a typed initializer to tell Swift what type they hold.
- Avoid `Any` — it disables compile-time type safety.
