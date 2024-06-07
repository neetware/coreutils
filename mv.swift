import Foundation

    // enable FileManager
    let fm = FileManager.default
    
    // check if a commandline argument is present
    guard CommandLine.arguments.count > 1 else {
        print("Usage: mv <file1> <file2>") // Print usage information (file1 and file2")
        exit(EXIT_FAILURE)
    }
    
    // set commandline arguments
    let file1 = CommandLine.arguments[1]
    let file2 = CommandLine.arguments[2]

    // move file
    do {
        try fm.moveItem(atPath: file1, toPath: file2)
    } catch {
        print("Error: \(error.localizedDescription)")
        exit(EXIT_FAILURE)
    }

    // print message and name of moved file
    print("File moved: \(file1) -> \(file2)")
