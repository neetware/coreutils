
import Foundation

// enable FileManager
let fm = FileManager.default

// set commandline arguments
let fileIn = CommandLine.arguments[1]

// delete file
try fm.removeItem(atPath: fileIn)

print("File deleted: \(fileIn)")