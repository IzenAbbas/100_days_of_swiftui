# Day 6 — Loops, Summary, and Checkpoint 3

## `for` Loops

Used to repeat code for every item in a sequence (array, range, dictionary, etc.).

```swift
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os)")
}
```

If you don't need the loop variable, use an underscore `_` to signal intent and silence the "unused variable" warning:

```swift
for _ in 1...5 {
    print("Hello!")
}
```

---

## Ranges

```swift
1...5    // closed range — includes 1, 2, 3, 4, 5
1..<5    // half-open range — includes 1, 2, 3, 4 (excludes 5)
```

Ranges are commonly used for counting loops:

```swift
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}
```

---

## Nested Loops

```swift
for i in 1...5 {
    for j in 1...5 {
        print("\(i) * \(j) is \(i * j)")
    }
}
```

---

## `while` Loops

Repeats **while** a condition remains true. Useful when you don't know in advance how many iterations you'll need (e.g., game loops, waiting for user input).

```swift
var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}
print("Liftoff!")
```

---

## `repeat`-`while` Loops

Like `while`, but the condition is checked **after** the loop body runs — guaranteeing **at least one execution**.

```swift
var number = 0

repeat {
    print(number)
    number += 1
} while number < 5
```

> Use `repeat-while` when the first execution should always happen regardless of the condition (e.g., showing a menu, generating a random number that must not equal a previous one).

---

## `continue` and `break`

- `continue` — skips the rest of the **current iteration** and jumps to the next one.
- `break` — exits the **entire loop** immediately.

```swift
// continue — skip multiples of 3
for i in 1...20 {
    if i % 3 == 0 { continue }
    print(i)
}

// break — stop as soon as a match is found
let names = ["Anna", "Beto", "Carla", "Diego"]
for name in names {
    if name == "Carla" {
        print("Found Carla!")
        break
    }
}
```

---

## Labeled Statements

Used when you need to `break` or `continue` an **outer** loop from inside a nested loop.

```swift
outerLoop: for i in 1...5 {
    for j in 1...5 {
        if i * j > 10 {
            break outerLoop   // breaks BOTH loops, not just the inner one
        }
        print("\(i) x \(j) = \(i * j)")
    }
}
```

---

## Infinite Loops

`while true { ... }` runs forever unless a `break` is hit inside — common in game loops or command-line tools. Always ensure there's an exit path.

```swift
var count = 0
while true {
    count += 1
    if count == 5 { break }
}
print("Stopped at \(count)")
```

---

## ✅ Checkpoint 3 — FizzBuzz

**Challenge:** Loop from 1 through 100. For each number:
- Multiple of both 3 and 5 → print `"FizzBuzz"`
- Multiple of 3 → print `"Fizz"`
- Multiple of 5 → print `"Buzz"`
- Otherwise → print the number

```swift
for number in 1...100 {
    if number.isMultiple(of: 3) && number.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if number.isMultiple(of: 3) {
        print("Fizz")
    } else if number.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(number)
    }
}
```

> **Why check `both 3 and 5` first:** if you check `isMultiple(of: 3)` before the combined check, numbers like 15 would incorrectly print only "Fizz". In `if/else if` chains, only the **first matching branch** executes — order matters.

**Alternative using `switch` and a tuple** (elegant pattern matching):

```swift
for number in 1...100 {
    switch (number.isMultiple(of: 3), number.isMultiple(of: 5)) {
    case (true, true):   print("FizzBuzz")
    case (true, false):  print("Fizz")
    case (false, true):  print("Buzz")
    case (false, false): print(number)
    }
}
```

---

## Days 1–6 Summary

| Day | Core Concepts |
|-----|---------------|
| 1 | `var` vs `let`, type inference, `String` basics, `Int`/`Double` arithmetic |
| 2 | `Bool`, `.toggle()`, string interpolation `\( )`, `print()` |
| 3 | Arrays, Dictionaries, Sets, Enums |
| 4 | Type annotations, typed empty collections, avoiding `Any` |
| 5 | `if/else`, `switch` (exhaustive, no fallthrough), ternary `?:` |
| 6 | `for-in`, ranges, `while`, `repeat-while`, `continue`/`break`, labeled loops |

---

## Key Takeaways

- Use `for-in` over a collection or range when you know the number of iterations.
- Use `while` when the exit condition depends on runtime state.
- Use `repeat-while` when you need at least one execution before checking.
- `continue` skips an iteration; `break` exits the loop.
- Labeled loops let you `break` or `continue` outer loops from inner ones.
- In FizzBuzz-style conditionals, always put the most specific condition first in an `if/else if` chain.
