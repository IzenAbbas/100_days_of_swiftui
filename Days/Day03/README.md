# Day 3 — Arrays, Dictionaries, Sets, and Enums

## Arrays

An ordered collection of values of the **same type**, accessed by numeric index starting at `0`.

```swift
var beatles = ["John", "Paul", "George", "Ringo"]

beatles[0]                 // "John"
beatles.count              // 4
beatles.append("Pete")     // adds to the end
beatles.remove(at: 0)      // removes "John"
beatles.contains("Ringo")  // true
beatles.sorted()           // alphabetically sorted new array
beatles.reversed()         // reversed sequence (returns a ReversedCollection)
beatles.first              // Optional: "Paul" (or nil if empty)
beatles.isEmpty            // false
```

- Arrays are **type safe**: `["John", "Paul", 5]` is a compile error unless the array is typed as `[Any]` (generally avoided).
- Accessing an out-of-bounds index (`beatles[99]`) **crashes at runtime** — Swift does not return `nil`.

```swift
var scores = [Int]()    // empty array, explicitly typed
scores.append(100)
scores.append(80)
```

---

## Dictionaries

Stores **key-value pairs** where lookup happens by key, not by position.

```swift
let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

employee["name"]   // Optional("Taylor Swift") — always returns an Optional
```

Because a key might not exist, dictionary subscripting always returns an **Optional**. Always provide a default:

```swift
let jobValue  = employee["job",    default: "Unknown"]   // "Singer"
let missing   = employee["height", default: "Unknown"]   // "Unknown"
```

### Creating and Modifying

```swift
var heights = [String: Int]()
heights["Yao Ming"]        = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"]    = 206
```

> Dictionary keys must be unique — assigning to an existing key **overwrites** the previous value; it doesn't create a duplicate.

---

## Sets

An **unordered** collection that holds only **unique** values, optimized for fast membership checking.

```swift
var numbers = Set([1, 1, 3, 5, 7])
// numbers = {1, 3, 5, 7} — duplicate 1 removed automatically

numbers.insert(10)
numbers.contains(5)   // true — O(1) average
```

### Array vs Set

| | Array | Set |
|---|---|---|
| Order | Preserved | Unordered |
| Duplicates | Allowed | Not allowed |
| `contains()` speed | Slow — O(n) | Fast — O(1) |

---

## Enums

An enum defines a group of **related values** in a type-safe way, replacing error-prone raw strings/ints.

```swift
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

// Shorthand: multiple cases on one line
enum WeekdayShort {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .tuesday   // once Swift knows the type, you can drop the enum name
```

> **Why enums matter:** using a raw `String` like `"monday"` invites typos (`"mnoday"` compiles fine but is a silent bug). An enum value is checked at compile time — `.mnoday` simply won't compile.

### Enums with Raw Values

```swift
enum Planet: Int {
    case mercury = 1, venus, earth, mars   // venus = 2, earth = 3, mars = 4 (auto-incremented)
}

Planet.earth.rawValue   // 3
```

### Enums with Associated Values

```swift
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
}

let activity = Activity.running(destination: "London")
```

---

## Key Takeaways

- **Array**: use when order matters or duplicates are needed.
- **Dictionary**: use when you need to look up values by a meaningful key.
- **Set**: use when you only care whether something exists (fast `contains`), and order doesn't matter.
- **Enum**: use to represent a fixed set of related choices in a type-safe, compiler-checked way.
