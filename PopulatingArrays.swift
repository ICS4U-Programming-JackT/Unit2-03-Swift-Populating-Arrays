import Foundation

// Constant for minimum random number
let MIN = 0

// Constant for maximum random number
let MAX = 100

// Function to set up an array with 10 random integers between MIN and MAX
func setupArray() -> [Int] {
    var array: [Int] = []
    for _ in 0..<10 {
        let randomNumber = Int.random(in: MIN...MAX)
        array.append(randomNumber)
    }
    return array
}

// Main program function
func main() {
    // Initialize and sort array
    var sorted = setupArray()
    sorted.sort()

    // Calculate average
    var sum = 0
    for number in sorted {
        sum += number
    }
    let average = sum / sorted.count

    // Print each number with a comma
    for number in sorted {
        print("\(number), ", terminator: "")
    }

    // Print average on the same line, then newline
    print("Average: \(average)")
}

// Run program
main()
