import Foundation

// get current user
func getCurrentUser() -> String? {
    let userName = NSUserName()
    return userName
}

// print current user or error if failed
func main() {
    if let userName = getCurrentUser() {
//      print("You are: \(userName)")
        print(userName)
    } else {
        print("Failed to retrieve current user.")
    }
}

main()