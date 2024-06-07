import Foundation

// enable FileManager class
let fm = FileManager.default

// get working directory
let getWorkingDirectory = fm.currentDirectoryPath

// print working directory
print(getWorkingDirectory)