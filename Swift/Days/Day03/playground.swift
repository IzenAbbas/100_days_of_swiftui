import Foundation

// ============================================================
// DAY 3 — Arrays, Dictionaries, Sets, and Enums
// ============================================================

// MARK: - Arrays

var beatles = ["John", "Paul", "George", "Ringo"]

print(beatles[0])               // "John"
print(beatles.count)            // 4
beatles.append("Pete")
print(beatles)
beatles.remove(at: 0)           // removes "John"
print(beatles)
print(beatles.contains("Ringo")) // true
print(beatles.sorted())          // sorted copy
print(beatles.first ?? "none")   // first element (Optional)
print(beatles.isEmpty)           // false

// Empty typed array
var scores = [Int]()
scores.append(100)
scores.append(80)
scores.append(95)
print(scores)

// MARK: - Dictionaries

let employee: [String: String] = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

// Dictionary lookup always returns Optional
print(employee["name"] ?? "Unknown")   // "Taylor Swift"

// Safe access with default value
let jobValue  = employee["job",    default: "Unknown"]   // "Singer"
let missing   = employee["height", default: "Unknown"]   // "Unknown"
print(jobValue, missing)

// Creating and mutating a dictionary
var heights = [String: Int]()
heights["Yao Ming"]         = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"]     = 206
print(heights)

// Overwriting an existing key
heights["LeBron James"] = 207   // updates, does NOT create a duplicate
print(heights["LeBron James", default: 0])   // 207

// MARK: - Sets

var numbers = Set([1, 1, 3, 5, 7])
print(numbers)       // order not guaranteed; duplicate 1 removed

numbers.insert(10)
print(numbers.contains(5))    // true — O(1)
print(numbers.contains(99))   // false — O(1)
print(numbers.count)

// Comparing Set vs Array performance (conceptually)
let largeArray = Array(1...10_000)
let largeSet = Set(1...10_000)

// Array.contains is O(n) — must scan every element
let _ = largeArray.contains(9999)

// Set.contains is O(1) — hash lookup
let _ = largeSet.contains(9999)

// MARK: - Enums

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .tuesday   // short form once type is known
print(day)

// Enum with raw Int values
enum Planet: Int {
    case mercury = 1, venus, earth, mars
}

print(Planet.earth.rawValue)     // 3
print(Planet.mercury.rawValue)   // 1

if let planet = Planet(rawValue: 2) {
    print(planet)   // venus
}

// Enum with associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case eating(food: String)
}

let currentActivity = Activity.running(destination: "London")

switch currentActivity {
case .bored:
    print("Just chilling")
case .running(let destination):
    print("Running to \(destination)")
case .talking(let topic):
    print("Talking about \(topic)")
case .eating(let food):
    print("Eating \(food)")
}
