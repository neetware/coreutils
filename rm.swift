
import Foundation

// enable FileManager
let fm = FileManager.default

// set commandline arguments
let fileIn = CommandLine.arguments[1]

// delete file
try fm.removeItem(atPath: fileIn)

// print message and name of deleted file
print("File deleted: \(fileIn)")