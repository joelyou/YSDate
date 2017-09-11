import Foundation

extension Date{
    
    /// 是否为同一天
    public func ys_isInSameDay(date:Date?,calendar:Calendar?) -> Bool{
        guard let d = date else{
            return false
        }
        let cal = calendar == nil ? Calendar.current : calendar!
        return cal.isDate(self, inSameDayAs: d)
    }
    
    /// 是否在前一天
    public func ys_isInPreviousDay(date:Date?,calendar:Calendar?) -> Bool{
        guard let d = date else{
            return false
        }
        let cal = calendar == nil ? Calendar.current : calendar!
        let previousDay = d.ys_addDay(day: -1)
        return cal.isDate(self, inSameDayAs: previousDay)
    }
    
    /// 是否在后一天
    public func ys_isInNextDay(date:Date?,calendar:Calendar?) -> Bool{
        guard let d = date else{
            return false
        }
        let cal = calendar == nil ? Calendar.current : calendar!
        let nextDay = d.ys_addDay(day: 1)
        return cal.isDate(self, inSameDayAs: nextDay)
    }
    
    /// 前一天及以前
    public func ys_isFrontDay(date:Date?,calendar:Calendar?) -> Bool{
        guard let d = date else{
            return false
        }
        return self < d.ys_start()
    }
    
    /// 当天及以前
    public func ys_isFrontOrSameDay(date:Date?,calendar:Calendar?) -> Bool{
        guard let d = date else{
            return false
        }
        return self < d.ys_end()
    }
    
    /// 后一天及以后
    public func ys_isBehindDay(date:Date?,calendar:Calendar?) -> Bool{
        guard let d = date else{
            return false
        }
        return self > d.ys_end()
    }
    
    /// 当天及以后
    public func ys_isBehindOrSameDay(date:Date?,calendar:Calendar?) -> Bool{
        guard let d = date else{
            return false
        }
        return self > d.ys_start()
    }
}

extension Date{
    
    /// 今天
    public func ys_isInToday(calendar:Calendar? = nil) -> Bool{
        let cal = calendar == nil ? Calendar.current : calendar!
        return cal.isDateInToday(self)
    }
    
    /// 明天
    public func ys_isInTomorrow(calendar:Calendar? = nil) -> Bool{
        let cal = calendar == nil ? Calendar.current : calendar!
        return cal.isDateInTomorrow(self)
    }
    
    /// 昨天
    public func ys_isInYesterday(calendar:Calendar? = nil) -> Bool{
        let cal = calendar == nil ? Calendar.current : calendar!
        return cal.isDateInYesterday(self)
    }
    
    /// 是否包含当天
    public func ys_isInByDay(array:[Date],calendar:Calendar? = nil) -> Bool{
        let start = ys_start()
        let end = ys_end()
        
        for date in array{
            if start <= date && date <= end{
                return true
            }
        }
        return false
    }
}
