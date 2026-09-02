# Day 2 — Booleans, String Interpolation, and Checkpoint 1

## Booleans

`Bool` holds one of exactly two values: `true` or `false`. There is no concept of "truthy" values like in JavaScript or Python — an `Int` or `String` cannot be used where a `Bool` is expected.

```swift
let goodDogs = true
let gameOver = false

let isMultiple = 120.isMultiple(of: 3)   // true — method returning a Bool
```

### Negation with `!`

```swift
var isAuthenticated = false
isAuthenticated = !isAuthenticated   // true
isAuthenticated = !isAuthenticated   // false
```

### `.toggle()`

Flips a boolean's value in place — cleaner than `!` when working with a variable:

```swift
var gameOver = false
gameOver.toggle()   // true
gameOver.toggle()   // false
```

> **Prefer `.toggle()` over `= !variable`** — it reads more like natural language ("toggle the game over state") and avoids repeating the variable name.

---

## String Interpolation

Instead of clumsily concatenating strings and variables with `+`, Swift lets you embed values directly inside a string using `\( )`:

```swift
let name = "Taylor"
let age = 26

// Old, clunky way:
let greetingA = "Hello, my name is " + name + " and I am " + String(age) + " years old."

// Modern way — string interpolation:
let greetingB = "Hello, my name is \(name) and I am \(age) years old."
```

Interpolation isn't limited to variables — you can put whole expressions inside the parentheses:

```swift
print("5 x 5 is \(5 * 5)")                              // "5 x 5 is 25"

var playerOne = true
print("Player one is \(playerOne ? "winning" : "losing")")
```

### Why Interpolation is Preferred Over `+` Concatenation

1. You can't accidentally add a `String` and `Int` (which would be a compile error with `+`).
2. It's more efficient — Swift can optimize interpolated strings better than repeated concatenation.
3. It reads more naturally, close to how you'd say the sentence aloud.

---

## `print()`

```swift
print("Hello, world!")
print(name, age)                      // separated by space by default: "Taylor 26"
print(name, age, separator: " - ")    // "Taylor - 26"
print(name, terminator: "")           // no newline after output
```

---

## ✅ Checkpoint 1

**Challenge:** Create a constant holding a temperature in Celsius, then use string interpolation to print a sentence converting it to Fahrenheit, using the formula `F = C × 9/5 + 32`.

```swift
let celsius = 24.0
let fahrenheit = celsius * 9 / 5 + 32

print("\(celsius)°C is equal to \(fahrenheit)°F")
// "24.0°C is equal to 75.2°F"
```

> **Common trap:** if `celsius` and the division are all `Int`, `9/5` truncates to `1`, producing wrong results. Using a `Double` for celsius (or writing `9.0/5.0`) avoids this.

---

## Key Takeaways

- `Bool` is strict — only `true` or `false`, no "truthy" values.
- `.toggle()` is the idiomatic way to flip a boolean variable.
- Use string interpolation `\( )` instead of `+` concatenation — it's cleaner, safer, and more efficient.
- `print()` has optional `separator` and `terminator` parameters for fine control over output formatting.
