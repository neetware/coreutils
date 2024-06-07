import Foundation

// check if a commandline argument is present
guard CommandLine.arguments.count > 1 else {
    print("Usage: cat <filename>") // Print usage information
    exit(EXIT_FAILURE)
}

// get the file path with the command line argument
let filePath = CommandLine.arguments[1]

// read the file and print an error message if it fails
guard let fileContents = try? String(contentsOfFile: filePath, encoding: String.Encoding.utf8) else {
    print("Error reading file: \(filePath)")
    exit(EXIT_FAILURE)
}

// print the trimmed file contents
let trimmedContents = fileContents.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
print(trimmedContents)
