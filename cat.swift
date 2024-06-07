import Foundation

guard CommandLine.arguments.count > 1 else {
    print("Usage: cat <filename>")
    exit(EXIT_FAILURE)
}

let filePath = CommandLine.arguments[1]

guard let fileContents = try? String(contentsOfFile: filePath, encoding: String.Encoding.utf8) else {
    print("Error reading file: \(filePath)")
    exit(EXIT_FAILURE)
}

let trimmedContents = fileContents.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
print(trimmedContents)