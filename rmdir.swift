
import Foundation

// remove directory
func deleteDirectory() {
    // enable FileManager
    let fm = FileManager.default
    
    // check if a commandline argument is present
    guard CommandLine.arguments.count > 1 else {
        print("Usage: rmdir <directory>") // Print usage information
        exit(EXIT_FAILURE)
    }
    
    // set commandline arguments
    let dirTarget = CommandLine.arguments[1]
    
    // delete directory
    do {
        try fm.removeItem(atPath: String(dirTarget))
    } catch {
        print("Error: \(error.localizedDescription)")
        exit(EXIT_FAILURE)
    }
}

deleteDirectory()