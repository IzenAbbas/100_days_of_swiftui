import Foundation

// ============================================================
// DAY 6 — Loops, Summary, and Checkpoint 3 (FizzBuzz)
// ============================================================

// MARK: - For-In Loop over an Array

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os)")
}

// MARK: - Underscore when loop variable is unused

for _ in 1...3 {
    print("Hello!")
}

// MARK: - Ranges

// Closed range: includes both endpoints
for i in 1...5 {
    print(i, terminator: " ")
}
print()   // newline

// Half-open range: excludes upper endpoint
for i in 1..<5 {
    print(i, terminator: " ")
}
print()

// Multiplication table
for i in 1...12 {
    print("5 x \(i) = \(5 * i)")
}

// MARK: - Nested Loops

print("\n--- Multiplication Grid (1–5) ---")
for i in 1...5 {
    for j in 1...5 {
        print("\(i) × \(j) = \(i * j)", terminator: "  ")
    }
    print()
}

// MARK: - While Loop

var countdown = 5
while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}
print("Liftoff! 🚀")

// MARK: - Repeat-While Loop (executes body at least once)

var number = 1
repeat {
    print("number is \(number)")
    number += 1
} while number <= 3

// Even if condition is false from the start, body still runs once:
var x = 10
repeat {
    print("This runs once even though x = \(x)")
    x += 1
} while x < 5

// MARK: - Continue (skip iteration)

print("\nNumbers from 1 to 10, skipping multiples of 3:")
for i in 1...10 {
    if i % 3 == 0 { continue }
    print(i, terminator: " ")
}
print()

// MARK: - Break (exit loop early)

let names = ["Anna", "Beto", "Carla", "Diego"]
for name in names {
    if name == "Carla" {
        print("Found Carla at search time!")
        break
    }
    print("Not \(name)")
}

// MARK: - Labeled Statements (break outer loop from inner)

print("\nLabeled break:")
outerLoop: for i in 1...5 {
    for j in 1...5 {
        if i * j > 10 {
            print("Stopping at \(i) × \(j) = \(i * j)")
            break outerLoop
        }
        print("\(i) × \(j) = \(i * j)", terminator: "  ")
    }
    print()
}

// MARK: - Infinite Loop with Break

var count = 0
while true {
    count += 1
    if count >= 5 { break }
}
print("Exited infinite loop at count = \(count)")

// MARK: - Checkpoint 3: FizzBuzz

print("\n--- FizzBuzz (1–100) ---")

// Version 1: if/else if chain (most specific condition first!)
for n in 1...100 {
    if n.isMultiple(of: 3) && n.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if n.isMultiple(of: 3) {
        print("Fizz")
    } else if n.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(n)
    }
}

// Version 2: switch on a tuple — elegant pattern matching
print("\n--- FizzBuzz v2 (switch/tuple) ---")
for n in 1...100 {
    switch (n.isMultiple(of: 3), n.isMultiple(of: 5)) {
    case (true, true):   print("FizzBuzz")
    case (true, false):  print("Fizz")
    case (false, true):  print("Buzz")
    case (false, false): print(n)
    }
}
