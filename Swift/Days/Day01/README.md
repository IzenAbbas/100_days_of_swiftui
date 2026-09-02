# Day 1 — Variables, Constants, Strings, and Numbers

## Variables (`var`)

A variable is a named container that can change value over time.

```swift
var name = "Ted"
name = "Rebecca"   // allowed — var can be reassigned
```

- Swift uses **type inference**: it looks at `"Ted"` and infers `name` is a `String`.
- Once a type is inferred, it is **fixed**. You cannot later assign an `Int` to `name`:

```swift
var age = 38
age = "thirty-eight"   // ❌ compile error: cannot assign value of type 'String' to type 'Int'
```

---

## Constants (`let`)

A constant is set once and can never change.

```swift
let user = "Roy Kent"
user = "Coach Beard"   // ❌ compile error: cannot assign to value: 'user' is a 'let' constant
```

**Rule of thumb Apple recommends:** prefer `let` over `var` everywhere possible. If a value never needs to change, marking it `let` prevents accidental mutation and lets the compiler optimize more aggressively. Only switch to `var` when you know the value must change.

---

## Naming Conventions

- Swift uses **camelCase**, not snake_case: `numberOfLives`, not `number_of_lives`.
- Variable/constant names cannot start with a number, cannot contain spaces, and cannot reuse reserved keywords like `var`, `let`, or `class` unless wrapped in backticks (rare, e.g. `` `class` ``).
- Technically you *can* use emoji or unicode as variable names, but don't.

### Declaring multiple variables at once

```swift
var beatle1 = "John", beatle2 = "Paul", beatle3 = "George", beatle4 = "Ringo"
```

Not commonly recommended for readability, but valid.

---

## Strings

A `String` is a sequence of letters, numbers, punctuation, etc., wrapped in double quotes.

```swift
let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"
```

If your string itself needs to contain a double quote, escape it with a backslash:

```swift
let quote = "Then he tapped a sign saying \"Believe\" and walked away."
```

**Multi-line strings** use triple quotes, and the opening/closing `"""` must each be on their own line:

```swift
let movie = """
A day in
the life of an
Apple engineer
"""
```

If you want a multi-line string but *don't* want the line breaks to actually appear (just for source readability), add a backslash at line end:

```swift
let quote2 = """
The rain in Spain \
falls mainly on the \
plain.
"""
// prints as one line: "The rain in Spain falls mainly on the plain."
```

### Useful String Properties and Methods

```swift
let name = "Tim McGraw"

name.count                 // 11 — number of characters
name.uppercased()          // "TIM MCGRAW"
name.lowercased()          // "tim mcgraw"
name.hasPrefix("Tim")      // true
name.hasSuffix("Graw")     // false — case sensitive, "Graw" != "graw"
name.isEmpty               // false
```

> **Note:** `count` is a **property** (no parentheses); `uppercased()`, `lowercased()`, etc. are **methods** (require parentheses).

---

## Numbers

### Integers (`Int`)

Whole numbers, positive or negative, no decimal point.

```swift
let score = 10
let higherScore = score + 10          // 20
let halvedScore = score / 2           // 5

var counter = 10
counter += 5    // 15  (compound assignment: same as counter = counter + 5)
counter -= 3    // 12
counter *= 2    // 24
counter /= 4    // 6
```

For readability, large numbers can use underscores as visual separators — Swift ignores them:

```swift
let population = 8_000_000
```

**Integer division truncates.** `13 / 4` is `3`, not `3.25`, because both operands are `Int`.

```swift
let scoreA = 13 / 4   // 3
```

### Floating Point Numbers (`Double`)

Numbers with a decimal component.

```swift
let number = 0.1 + 0.2   // ≈ 0.30000000000000004 (binary floating point quirk)
```

Swift will **not** silently mix `Int` and `Double` in the same expression:

```swift
let a = 1
let b = 2.0
let c = a + b          // ❌ error: binary operator '+' cannot be applied to operands of type 'Int' and 'Double'
let c2 = Double(a) + b // ✅ 3.0 — must explicitly convert
```

Swift always prefers `Double` over `Float` (Float has less precision) unless you have a specific memory-constrained reason to use `Float`.

### Operator Overloading

The same operators behave differently depending on context:

```swift
"Ted" + "Lasso"       // string concatenation → "TedLasso"
4 + 5                 // integer addition → 9
4.5 + 5.5             // double addition → 10.0
```

### Compound Assignment Operators

```swift
var score = 95
score -= 5     // 90
score += 10    // 100

var phrase = "Believe "
phrase += "in yourself"   // "Believe in yourself"
```

### Rounding

```swift
let value = 3.7
value.rounded()   // 4.0 (returns a Double)
Int(value)        // 3 — Int() truncates, doesn't round
```

---

## Key Takeaways

- Use `let` by default; only switch to `var` when you need mutability.
- Swift's type system is strict — you cannot mix `Int` and `Double` without explicit conversion.
- Integer division always truncates — use `Double` when you need decimal precision.
- String methods like `uppercased()` need parentheses; properties like `count` don't.
