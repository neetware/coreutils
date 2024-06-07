import Foundation

// enable FileManager
let fm = FileManager.default

// get working directory
let getWorkingDirectory = fm.currentDirectoryPath

// print working directory
print(getWorkingDirectory)