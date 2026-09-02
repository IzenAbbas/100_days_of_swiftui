# 100 Days of SwiftUI

A personal learning journal tracking progress through Paul Hudson's [100 Days of SwiftUI](https://www.hackingwithswift.com/100/swiftui) course.

Each day has its own folder containing:
- **`README.md`** — full study notes, explanations, and edge cases
- **`playground.swift`** — clean, runnable Swift code snippets ready to paste into Xcode Playground

---

## Repository Structure

```
100_days_of_swiftui/
├── Swift/
│   └── Days/           ← Daily Swift fundamentals notes & playgrounds
│       ├── Day01/
│       ├── Day02/
│       └── ...
└── SwiftUI/
    └── Projects/       ← SwiftUI project work (coming soon)
```

---

## Swift Fundamentals Progress

| Day | Topic | Status |
|-----|-------|--------|
| [Day 01](Swift/Days/Day01/) | Variables, Constants, Strings, Numbers | ✅ |
| [Day 02](Swift/Days/Day02/) | Booleans, String Interpolation, Checkpoint 1 | ✅ |
| [Day 03](Swift/Days/Day03/) | Arrays, Dictionaries, Sets, Enums | ✅ |
| [Day 04](Swift/Days/Day04/) | Type Annotations, Checkpoint 2 | ✅ |
| [Day 05](Swift/Days/Day05/) | If, Switch, Ternary Operator | ✅ |
| [Day 06](Swift/Days/Day06/) | Loops, Summary, Checkpoint 3 (FizzBuzz) | ✅ |

---

## SwiftUI Projects Progress

| Project | Topic | Status |
|---------|-------|--------|
| — | *(coming soon)* | 🔜 |

---

## Quick Reference — Swift Days 1–6

| Day | Core Concepts |
|-----|---------------|
| 1 | `var` vs `let`, type inference, `String` basics, `Int`/`Double` arithmetic, compound operators |
| 2 | `Bool`, `.toggle()`, string interpolation `\( )`, `print()` |
| 3 | Arrays (ordered, duplicates OK), Dictionaries (key-value), Sets (unique, fast lookup), Enums (type-safe fixed choices) |
| 4 | Type annotations (`: Type`), when inference isn't enough, typed empty collections, avoiding `Any` |
| 5 | `if`/`else if`/`else`, `&&`/`\|\|`, `switch` (exhaustive, no fallthrough by default), ternary `?:` |
| 6 | `for-in`, ranges (`...` vs `..<`), `while`, `repeat-while`, `continue`/`break`, labeled loops |

---

## Common Pitfalls (Days 1–6)

1. **Forgetting `let` vs `var` intent** — default to `let`, switch to `var` only when needed.
2. **Mixing `Int` and `Double`** without explicit conversion — always a compile error, not a silent bug.
3. **Integer division truncation** — `7 / 2` is `3`, not `3.5`.
4. **Out-of-bounds array access crashes at runtime** — unlike dictionaries, arrays don't return `nil`.
5. **Dictionary access always returns an Optional** — use `dict["key", default: value]`.
6. **`switch` must be exhaustive** — always include `default:` unless covering every enum case.
7. **Ternary overuse** — nesting ternaries quickly becomes unreadable.
8. **Order of conditions in `if/else if` chains** — more specific checks must come before general ones.

---

## Setup

These files are written as plain `.swift` snippets. To run them:

1. Open Xcode → File → New → Playground
2. Copy the contents of any `playground.swift` file into the playground editor
3. Run with ▶︎

Alternatively, use the Swift REPL:

```bash
swift repl
```
