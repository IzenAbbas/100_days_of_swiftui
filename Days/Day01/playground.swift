import Foundation

// ============================================================
// DAY 1 — Variables, Constants, Strings, and Numbers
// ============================================================

// MARK: - Variables (var)

var name = "Ted"
name = "Rebecca"   // var can be reassigned
print(name)        // "Rebecca"

// var age = 38
// age = "thirty-eight"  // ❌ compile error — type is fixed at inference

// MARK: - Constants (let)

let user = "Roy Kent"
// user = "Coach Beard"  // ❌ compile error — let cannot be reassigned
print(user)

// MARK: - Multiple variables on one line

var beatle1 = "John", beatle2 = "Paul", beatle3 = "George", beatle4 = "Ringo"
print(beatle1, beatle2, beatle3, beatle4)

// MARK: - Strings

let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

// Escaping a double quote inside a string
let quote = "Then he tapped a sign saying \"Believe\" and walked away."
print(quote)

// Multi-line string (line breaks are preserved)
let movie = """
A day in
the life of an
Apple engineer
"""
print(movie)

// Multi-line string with backslash (line breaks collapsed)
let quote2 = """
The rain in Spain \
falls mainly on the \
plain.
"""
print(quote2)  // "The rain in Spain falls mainly on the plain."

// MARK: - String Properties & Methods

let playerName = "Tim McGraw"
print(playerName.count)              // 11
print(playerName.uppercased())       // "TIM MCGRAW"
print(playerName.lowercased())       // "tim mcgraw"
print(playerName.hasPrefix("Tim"))   // true
print(playerName.hasSuffix("Graw"))  // false — case sensitive
print(playerName.isEmpty)            // false

var emptyString = ""
print(emptyString.isEmpty)           // true

// MARK: - Integers (Int)

let score = 10
let higherScore = score + 10     // 20
let halvedScore = score / 2      // 5
print(higherScore, halvedScore)

var counter = 10
counter += 5    // 15
counter -= 3    // 12
counter *= 2    // 24
counter /= 4    // 6
print(counter)

// Underscores as visual separators (ignored by Swift)
let population = 8_000_000
print(population)

// Integer division truncates
let scoreA = 13 / 4   // 3 (not 3.25)
print(scoreA)

// MARK: - Doubles

let floatNumber = 0.1 + 0.2
print(floatNumber)   // may print 0.30000000000000004

// Mixing Int and Double requires explicit conversion
let a = 1
let b = 2.0
// let c = a + b          // ❌ compile error
let c2 = Double(a) + b   // ✅ 3.0
print(c2)

// MARK: - Operator Overloading

print("Ted" + "Lasso")   // "TedLasso" — concatenation
print(4 + 5)             // 9 — integer addition
print(4.5 + 5.5)         // 10.0 — double addition

// MARK: - Rounding

let value = 3.7
print(value.rounded())   // 4.0 — rounds to nearest
print(Int(value))        // 3 — truncates (does NOT round)
