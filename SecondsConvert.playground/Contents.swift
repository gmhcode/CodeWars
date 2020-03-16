import UIKit
//Your task in order to complete this Kata is to write a function which formats a duration, given as a number of seconds, in a human-friendly way.
//
//The function must accept a non-negative integer. If it is zero, it just returns "now". Otherwise, the duration is expressed as a combination of years, days, hours, minutes and seconds.
//
//It is much easier to understand with an example:
//
//formatDuration (62)    // returns "1 minute and 2 seconds"
//formatDuration (3662)  // returns "1 hour, 1 minute and 2 seconds"
//For the purpose of this Kata, a year is 365 days and a day is 24 hours.
//
//Note that spaces are important.
//
//Detailed rules
//The resulting expression is made of components like 4 seconds, 1 year, etc. In general, a positive integer and one of the valid units of time, separated by a space. The unit of time is used in plural if the integer is greater than 1.
//
//The components are separated by a comma and a space (", "). Except the last component, which is separated by " and ", just like it would be written in English.
//
//A more significant units of time will occur before than a least significant one. Therefore, 1 second and 1 year is not correct, but 1 year and 1 second is.
//
//Different components have different unit of times. So there is not repeated units like in 5 seconds and 1 second.
//
//A component will not appear at all if its value happens to be zero. Hence, 1 minute and 0 seconds is not valid, but it should be just 1 minute.
//
//A unit of time must be used "as much as possible". It means that the function should not return 61 seconds, but 1 minute and 1 second instead. Formally, the duration specified by of a component must not be greater than any valid more significant unit of time.
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
