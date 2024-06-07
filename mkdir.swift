
import Foundation

// make directory
func makeDirectory() {
    // enable FileManager
    let fm = FileManager.default
    
    // check if a commandline argument is present
    guard CommandLine.arguments.count > 1 else {
        print("Usage: mkdir <directory>") // Print usage information
        exit(EXIT_FAILURE)
    }
    
    // set commandline arguments
    let dirTarget = CommandLine.arguments[1]
    
    // create directory
    do {
        try fm.createDirectory(atPath: dirTarget, withIntermediateDirectories: true, attributes: nil)
    } catch {
        print("Error: \(error.localizedDescription)")
        exit(EXIT_FAILURE)
    }
}

makeDirectory()
