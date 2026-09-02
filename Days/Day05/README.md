# Day 5 — If, Switch, and the Ternary Operator

## `if` Statements

```swift
let score = 85

if score > 90 {
    print("Amazing!")
} else if score > 70 {
    print("Good job!")
} else {
    print("Keep trying.")
}
```

Braces `{ }` are **mandatory** in Swift, even for single-line bodies (unlike C or JavaScript).

---

## Combining Conditions

```swift
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {     // AND — both must be true
    print("Both are adults")
}

if age1 > 18 || age2 > 18 {     // OR — at least one must be true
    print("At least one is an adult")
}
```

---

## Comparison Operators

```swift
==   // equal to
!=   // not equal to
>    // greater than
<    // less than
>=   // greater than or equal to
<=   // less than or equal to
```

Strings can also be compared lexicographically (alphabetical order):

```swift
"Taylor" <= "Swift"   // true
"Apple"  <  "Banana"  // true
```

---

## `switch` Statements

Useful when checking a single value against many possible matches.

```swift
let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}
```

### Key Differences from C-family switch

1. Swift's `switch` **must be exhaustive** — every possible case must be handled (`default` covers the rest).
2. Swift does **not fall through** by default — no `break` needed.
3. To opt into fallthrough explicitly, use the `fallthrough` keyword:

```swift
switch weather {
case "sunny":
    print("Wear sunscreen")
    fallthrough
case "warm":
    print("Also stay hydrated")
default:
    break
}
```

### Switching on Enums

```swift
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

switch transport {
case .airplane:
    print("Fly!")
case .helicopter:
    print("Get ready for take off")
case .bicycle:
    print("Pedal hard")
case .car:
    print("Turn the key")
case .scooter:
    print("Push off!")
}
```

> Because Swift knows `TransportOption` has exactly 5 cases, this `switch` is exhaustive without needing `default`. If you later add a 6th case and forget to handle it, Swift throws a **compile error** — catching the bug immediately.

---

## The Ternary Conditional Operator

Syntax: `condition ? valueIfTrue : valueIfFalse`

```swift
let age = 18
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)   // "Yes"
```

Handy inline, e.g. inside string interpolation:

```swift
let hour = 23
print("It's \(hour < 12 ? "morning" : "not morning")")
```

### When to Use Ternary vs if/else

- **Ternary** shines for short, simple single-value assignment.
- **if/else** is more readable when multiple statements or complex branching is involved.
- Apple's style guides discourage nesting ternaries — it becomes hard to read quickly.

---

## Key Takeaways

- Braces `{}` are always required in Swift conditionals — no single-line shorthand.
- `switch` is exhaustive and doesn't fall through by default — safer than C-style switch.
- Switching on enums gives you compile-time exhaustiveness checking for free.
- The ternary operator `?:` is great for concise value selection; avoid nesting it.
