import UIKit

var str = "Hello, playground"


func formatDuration(_ seconds: Int) -> String {
    //complete this function
    var remainingSeconds = seconds
    var returningString = ""
    var commaCount = 0
    
    let secondsInYear = 31536000
    let secondsInDay = 86400
    let secondsInHour = 3600
    let secondsInMinute = 60
    
    
    var years = 0
    var days = 0
    var hours = 0
    var minutes = 0
    var secs = 0
    
    
    
    if remainingSeconds == 0 {
        return "now"
    }
    
    if remainingSeconds >= secondsInYear {
        let quotAndRem = remainingSeconds.quotientAndRemainder(dividingBy: secondsInYear)
        remainingSeconds = quotAndRem.remainder
        years = quotAndRem.quotient
        commaCount += 1
    }
    if remainingSeconds >= secondsInDay {
        let quotAndRem = remainingSeconds.quotientAndRemainder(dividingBy: secondsInDay)
        remainingSeconds = quotAndRem.remainder
        days = quotAndRem.quotient
        commaCount += 1
    }
    if remainingSeconds >= secondsInHour {
        let quotAndRem = remainingSeconds.quotientAndRemainder(dividingBy: secondsInHour)
        remainingSeconds = quotAndRem.remainder
        hours = quotAndRem.quotient
        commaCount += 1
    }
    if remainingSeconds >= secondsInMinute {
        let quotAndRem = remainingSeconds.quotientAndRemainder(dividingBy: secondsInMinute)
        remainingSeconds = quotAndRem.remainder
        minutes = quotAndRem.quotient
        commaCount += 1
    }
    if remainingSeconds >= 1 {
        secs = remainingSeconds
        commaCount += 1
    }
    
    
    
    
    if years > 0 {
        returningString += years > 1 ? "\(years) years" : "\(years) year"
        returningString += commaCounter(commaCount)
        commaCount -= 1
    }
    if days > 0 {
        returningString += days > 1 ? "\(days) days" : "\(days) day"
        returningString += commaCounter(commaCount)
        commaCount -= 1
    }
    if hours > 0 {
        returningString += hours > 1 ? "\(hours) hours" : "\(hours) hour"
        returningString += commaCounter(commaCount)
        commaCount -= 1
    }
    if minutes > 0 {
        returningString += minutes > 1 ? "\(minutes) minutes" : "\(minutes) minute"
        returningString += commaCounter(commaCount)
        commaCount -= 1
    }
    if secs > 0 {
        returningString += secs > 1 ? "\(secs) seconds" : "\(secs) second"
        returningString += commaCounter(commaCount)
        commaCount -= 1
    }
//    let b = 301.quotientAndRemainder(dividingBy: 9).remainder
//    print(b)
    
    
    
    return returningString
}

func commaCounter(_ commaCounterVal: Int) -> String {

    var returningString = ""
    
    if commaCounterVal == 2 {
        returningString = " and "
    } else if commaCounterVal >= 3 {
        returningString  = ", "
    }
    
    return returningString
}

print(formatDuration(1))
