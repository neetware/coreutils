
import Foundation

// make text file
func makeFile() {

    // check if a commandline argument is present
    guard CommandLine.arguments.count > 1 else {
        print("Usage: touch <filename>")
        exit(EXIT_FAILURE)
    }

    // set commandline arguments
    let fileTarget = CommandLine.arguments[1]

    // create file
    FileManager.default.createFile(atPath: fileTarget, contents: nil, attributes: nil)
}

makeFile()

