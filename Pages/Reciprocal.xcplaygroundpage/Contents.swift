import Foundation
// Playground

// Define a function called "main"
func main() {
    // This code block will start when the Playground is executed
    let input = "Hello, Swift Class!"
    print("Output: \"\(Reciprocal(text: input))\"") // Output: "Svool, Hdrug Xozhh!"
}

// Call the "main" function to begin the program's execution.
// ---Start--- //
main()
// ----------- //

// Define a function called "Reciprocal" that takes a string as input and returns a string.
// This function replaces each letter in the input string with its "mirror" character based on its case.
// The mirror character is determined by subtracting the Unicode value of the original character from a specific value.

func Reciprocal(text: String) -> String {
    var newStr = String() // Create an empty string to store the modified result.

    // Loop through each character in the input string.
    text.forEach { char in
        if char.isLowercase {
            // If the character is lowercase:
            let optionalAsciiValue = char.asciiValue // Get the Unicode value of the character.
            guard let unwrappedAscii = optionalAsciiValue else { return } // Unwrap the optional value.
            let mirrorChar = 219 - unwrappedAscii // Calculate the mirror character value by subtracting the Unicode value from 219.
            let character = Character(UnicodeScalar(mirrorChar)) // Create a new character using the mirror Unicode value.
            newStr.append(character) // Append the mirror character to the result string.

        } else if char.isUppercase {
            // If the character is uppercase:
            let optionalAsciiValue = char.asciiValue // Get the Unicode value of the character.
            guard let unwrappedAscii = optionalAsciiValue else { return } // Unwrap the optional value.
            let mirrorChar = 155 - unwrappedAscii // Calculate the mirror character value by subtracting the Unicode value from 155.
            let character = Character(UnicodeScalar(mirrorChar)) // Create a new character using the mirror Unicode value.
            newStr.append(character) // Append the mirror character to the result string.

        } else {
            // If the character is neither uppercase nor lowercase (e.g., punctuation, numbers, etc.),
            // just append the original character to the result string without any modification.
            newStr.append(char)
        }
    }

    // Return the modified result string.
    return newStr
}
