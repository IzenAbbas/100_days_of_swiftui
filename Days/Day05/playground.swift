import Foundation

// ============================================================
// DAY 5 — If, Switch, and the Ternary Operator
// ============================================================

// MARK: - If / Else If / Else

let score = 85

if score > 90 {
    print("Amazing!")
} else if score > 70 {
    print("Good job!")
} else {
    print("Keep trying.")
}

// MARK: - Combining Conditions

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {   // AND
    print("Both are adults")
} else {
    print("At least one is under 18")
}

if age1 > 18 || age2 > 18 {   // OR
    print("At least one is an adult")
}

// MARK: - Comparison Operators

print("hello" == "hello")   // true
print("hello" != "world")   // true
print(5 > 3)                // true
print(5 < 3)                // false
print(5 >= 5)               // true
print(5 <= 4)               // false

// Lexicographic string comparison
print("Taylor" <= "Swift")   // true (T > S lexicographically... wait, let's verify)
print("Apple" < "Banana")    // true

// MARK: - Switch

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

// Switch with fallthrough
let temp = "sunny"
switch temp {
case "sunny":
    print("Wear sunscreen")
    fallthrough
case "warm":
    print("Also stay hydrated")
default:
    break
}

// Multiple values in a single case
let someScore = 75
switch someScore {
case 0..<50:
    print("Failing")
case 50..<70:
    print("Passing")
case 70..<90:
    print("Good")
default:
    print("Excellent")
}

// MARK: - Switch on Enums

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.bicycle

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
// No `default` needed — all enum cases are covered, Swift verifies exhaustiveness

// MARK: - Ternary Conditional Operator

let userAge = 18
let canVote = userAge >= 18 ? "Yes" : "No"
print("Can vote: \(canVote)")

let hour = 14
print("It's \(hour < 12 ? "morning" : "afternoon/evening")")

// Ternary inside print
let itemCount = 5
print("You have \(itemCount == 1 ? "1 item" : "\(itemCount) items") in your cart")

// MARK: - Nested ternary (avoid — hard to read)
let x = 42
let label = x > 100 ? "large" : x > 50 ? "medium" : "small"
print(label)   // "small" — but this is already pushing readability
// Better written as if/else if/else
