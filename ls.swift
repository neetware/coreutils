import Foundation

// enable FileManager
let fm = FileManager.default

// get working directory
let getWorkingDirectory = fm.currentDirectoryPath

// get list of files
let listFiles = try! fm.contentsOfDirectory(atPath: getWorkingDirectory)

// print names of files
for listFile in listFiles {
    print(listFile)
}
