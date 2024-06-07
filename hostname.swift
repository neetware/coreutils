import Foundation

// gets the hostname of the current machine
if let hostname = Host.current().name{
    print((hostname))
}