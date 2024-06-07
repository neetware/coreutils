
import Foundation

// enable FileManager
let fm = FileManager.default

// set commandline arguments
let fileIn = CommandLine.arguments[1]
let fileOut = CommandLine.arguments[2]

// copy file
try fm.copyItem(atPath: fileIn, toPath: fileOut)

// print message (non-standard)
print("File copied: \(fileIn) -> \(fileOut)")