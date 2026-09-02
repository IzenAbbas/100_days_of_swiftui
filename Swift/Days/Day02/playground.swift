import Foundation

// ============================================================
// DAY 2 — Booleans, String Interpolation, and Checkpoint 1
// ============================================================

// MARK: - Booleans

let goodDogs = true
let gameOver = false

// .isMultiple(of:) returns a Bool
let isMultiple = 120.isMultiple(of: 3)   // true
print(isMultiple)

// Negation with !
var isAuthenticated = false
isAuthenticated = !isAuthenticated   // true
isAuthenticated = !isAuthenticated   // false
print(isAuthenticated)

// .toggle() — cleaner in-place flip
var isGameOver = false
isGameOver.toggle()   // true
print(isGameOver)
isGameOver.toggle()   // false
print(isGameOver)

// MARK: - String Interpolation

let playerName = "Taylor"
let age = 26

// Old concatenation approach
let greetingA = "Hello, my name is " + playerName + " and I am " + String(age) + " years old."
print(greetingA)

// Modern interpolation approach
let greetingB = "Hello, my name is \(playerName) and I am \(age) years old."
print(greetingB)

// Expressions inside interpolation
print("5 x 5 is \(5 * 5)")           // "5 x 5 is 25"
print("Age doubled: \(age * 2)")      // "Age doubled: 52"

// Ternary inside interpolation
var playerOne = true
print("Player one is \(playerOne ? "winning" : "losing")")

// MARK: - print() options

print(playerName, age)                      // "Taylor 26"
print(playerName, age, separator: " - ")    // "Taylor - 26"
print("No newline after this", terminator: "")
print(" ← same line")                       // continues on same line

// MARK: - Checkpoint 1: Celsius to Fahrenheit

// Formula: F = C × 9/5 + 32
let celsius = 24.0   // must be Double to avoid integer division truncation
let fahrenheit = celsius * 9 / 5 + 32

print("\(celsius)°C is equal to \(fahrenheit)°F")
// "24.0°C is equal to 75.2°F"

// Additional examples
let boilingPoint = 100.0
let freezingPoint = 0.0
print("\(boilingPoint)°C = \(boilingPoint * 9 / 5 + 32)°F")   // 212°F
print("\(freezingPoint)°C = \(freezingPoint * 9 / 5 + 32)°F") // 32°F
