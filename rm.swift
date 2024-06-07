
import Foundation

// enable FileManager
let fm = FileManager.default

// check if a commandline argument is present
guard CommandLine.arguments.count > 1 else {
    print("Usage: rm <filename>") // Print usage information
    exit(EXIT_FAILURE)
}

// set commandline arguments
let fileTarget = CommandLine.arguments[1]

// delete file
do {
    try fm.removeItem(atPath: fileTarget)
} catch {
    print("Error: \(error.localizedDescription)")
    exit(EXIT_FAILURE)
}

// print message and name of deleted file
print("File deleted: \(fileTarget)")
