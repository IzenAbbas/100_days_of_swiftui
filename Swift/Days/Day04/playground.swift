import Foundation

// ============================================================
// DAY 4 — Type Annotations and Checkpoint 2
// ============================================================

// MARK: - Type Inference (no annotation needed)

var score = 0             // inferred Int
var tagline = "SwiftUI"   // inferred String
var rating = 4.5          // inferred Double
var isReady = true        // inferred Bool

// MARK: - Type Annotations (explicit)

var totalScore: Int = 0
var albumRating: Double = 10        // forces Double; bare "10" would infer Int
var playerName: String = "Roy"
var isAuthenticated: Bool = true

// Annotation required when declaring without initial value
var city: String
city = "Manchester"
print(city)

var tries: Int
tries = 3
print(tries)

// MARK: - Type Annotations for Collections

var albums: [String]         = ["Red", "1989", "Reputation"]
var user:   [String: String] = ["id": "@twostraws"]
var books:  Set<String>      = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

print(albums)
print(user)
print(books)

// MARK: - Empty Collections — three equivalent styles

var teamsA: [String] = []          // annotation + empty literal (style 1)
var teamsB = [String]()            // type inferred from generic init (style 2 — preferred)
var teamsC: [String] = [String]()  // redundant but valid (style 3)

teamsB.append("Arsenal")
teamsB.append("Chelsea")
print(teamsB)

var emptyDict = [String: Int]()
emptyDict["Alice"] = 95
print(emptyDict)

var emptySet = Set<String>()
emptySet.insert("Swift")
print(emptySet)

// MARK: - Enums as Types

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var today: Weekday = .monday   // annotation lets us use short-form .monday
today = .friday
print(today)

// MARK: - Any (avoid in real code)

// Loses all compile-time safety
var mixed: [Any] = ["one", 2, true, 3.14]
for item in mixed {
    print(item)   // have to check type at runtime
}

// MARK: - Checkpoint 2: Array count + membership check

let fruits: [String] = ["Apple", "Banana", "Cherry", "Mango"]

print("There are \(fruits.count) fruits in the array.")
print("Contains Banana? \(fruits.contains("Banana"))")
print("Contains Grape?  \(fruits.contains("Grape"))")

// Extension: same data as a Set for O(1) membership checking
let fruitSet: Set<String> = ["Apple", "Banana", "Cherry", "Mango"]
// Set uses hashing internally → .contains() is O(1), Array is O(n)
print(fruitSet.contains("Mango"))   // true
print(fruitSet.contains("Grape"))   // false
