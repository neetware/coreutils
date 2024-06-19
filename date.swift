
import Foundation

// get and format date
func getDate() {
    // get date
    let now = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "EEE MMM d HH:mm:ss yyyy"
    let formattedDate = dateFormatter.string(from: now)
    
    // print date
    print(formattedDate)
}

getDate()