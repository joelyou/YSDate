import Foundation

// MARK: - 开始时间/结束时间
extension Date{
    
    /// 某一天的开始时间，如：2017-06-18 00:00:00
    public func ys_start(calendar:Calendar? = nil) -> Date{
        let cal = calendar == nil ? Calendar.current : calendar!
        return cal.startOfDay(for: self)
    }
    
    /// 某一天的结束时间，如：2017-06-18 23:59:59
    public func ys_end(calendar:Calendar? = nil) -> Date{
        let cal = calendar == nil ? Calendar.current : calendar!
        var coms = DateComponents()
        coms.day = 1
        coms.second = -1
        return cal.date(byAdding: coms, to: self.ys_start(calendar:calendar))!
    }
    
    /// 某一天所在月份的开始时间，如：2017-06-01 00:00:00
    public func ys_monthStart(calendar:Calendar? = nil) -> Date{
        let cal = calendar == nil ? Calendar.current : calendar!
        var start = self
        var interval:TimeInterval = 0
        let _ = cal.dateInterval(of: .month, start: &start, interval: &interval, for: self)
        return start
    }
    
    /// 某一天所在月份的结束时间，如：2017-06-30 23:59:59
    public func ys_monthEnd(calendar:Calendar? = nil) ->Date{
        let cal = calendar == nil ? Calendar.current : calendar!
        var coms = DateComponents()
        coms.month = 1
        coms.second = -1
        return cal.date(byAdding: coms, to: self.ys_monthStart(calendar:calendar))!
    }
    
    /// 某一天所在年份的开始时间，如：2017-01-01 00:00:00
    public func ys_yearStart(calendar:Calendar? = nil) -> Date{
        let cal = calendar == nil ? Calendar.current : calendar!
        var start = self
        var interval:TimeInterval = 0
        let _ = cal.dateInterval(of: .year, start: &start, interval: &interval, for: self)
        return start
    }
    
    /// 某一天所在年份的结束时间，如：2017-12-31 23:59:59
    public func ys_yearEnd(calendar:Calendar? = nil) -> Date{
        let cal = calendar == nil ? Calendar.current : calendar!
        var coms = DateComponents()
        coms.year = 1
        coms.second = -1
        return cal.date(byAdding: coms, to: self.ys_yearStart(calendar:calendar))!
    }
}

// MARK: - 月份的天数
extension Date{
    
    /// 月份的天数
    public func ys_dayCountInMonth(calendar:Calendar? = nil) -> Int{
        let cal = calendar == nil ? Calendar.current : calendar!
        let range = cal.range(of: .day, in: .month, for: self)!
        return range.count
    }
    
    /// 月份的天数
    public static func ys_dayCountInMonth(year:Int,month:Int,locale:Locale? = nil,calendar:Calendar? = nil) -> Int{
        let form = DateFormatter()
        form.dateFormat = "yyyy/MM"
        form.locale = locale == nil ? Locale.current : locale
        
        let m = month == 12 ? 12 : month % 12
        let str = "\(year)/\(m)"
        if let date = form.date(from: str){
            return date.ys_dayCountInMonth(calendar: calendar)
        }
        return 0
    }
}

// MARK: - 日期计算
extension Date{
    
    /// 当天与指定日期相差天数
    public func ys_dayCount(date:Date?,locale:Locale? = nil,calendar:Calendar? = nil) -> Int{
        guard let d = date else{
            return 0
        }
        let form = DateFormatter()
        form.dateFormat = "yyyy/MM/dd"
        form.locale = locale == nil ? Locale.current : locale
        
        let selfStr = form.string(from: self)
        let dateStr = form.string(from: d)
        
        let selfDate = form.date(from: selfStr)!
        let fromDate = form.date(from: dateStr)!
        
        let cal = calendar == nil ? Calendar.current : calendar!
        let coms = cal.dateComponents([.day], from: fromDate, to: selfDate)
        return coms.day ?? 0
    }
    
    /// 重置时分秒
    public func ys_reset(hour:Int,minute:Int,second:Int,calendar:Calendar? = nil) -> Date{
        let cal = calendar == nil ? Calendar.current : calendar!
        return cal.date(bySettingHour: hour % 24, minute: minute % 60, second: second % 60, of: self)!
    }
    
    /// 添加秒
    public func ys_addSecond(second:Int,calendar:Calendar? = nil) -> Date{
        let cal = calendar == nil ? Calendar.current : calendar!
        var coms = DateComponents()
        coms.second = second
        return cal.date(byAdding: coms, to: self)!
    }
    
    /// 添加分钟
    public func ys_addMinute(minute:Int,calendar:Calendar? = nil) -> Date{
        let cal = calendar == nil ? Calendar.current : calendar!
        var coms = DateComponents()
        coms.minute = minute
        return cal.date(byAdding: coms, to: self)!
    }
    
    /// 添加小时
    public func ys_addHour(hour:Int,calendar:Calendar? = nil) -> Date{
        let cal = calendar == nil ? Calendar.current : calendar!
        var coms = DateComponents()
        coms.hour = hour
        return cal.date(byAdding: coms, to: self)!
    }
    
    /// 添加天数
    public func ys_addDay(day:Int,calendar:Calendar? = nil) -> Date{
        let cal = calendar == nil ? Calendar.current : calendar!
        var coms = DateComponents()
        coms.day = day
        return cal.date(byAdding: coms, to: self)!
    }
    
    /// 添加月份
    public func ys_addMonth(month:Int,calendar:Calendar? = nil) -> Date{
        let cal = calendar == nil ? Calendar.current : calendar!
        var coms = DateComponents()
        coms.month = month
        return cal.date(byAdding: coms, to: self)!
    }
    
    /// 添加年数
    public func ys_addYear(year:Int,calendar:Calendar? = nil) -> Date{
        let cal = calendar == nil ? Calendar.current : calendar!
        var coms = DateComponents()
        coms.year = year
        return cal.date(byAdding: coms, to: self)!
    }
    
    /// 计算日期
    public func ys_add(year:Int?,month:Int?,day:Int?,hour:Int?,minute:Int?,second:Int?,calendar:Calendar? = nil) -> Date{
        let cal = calendar == nil ? Calendar.current : calendar!
        var coms = DateComponents()
        coms.year = year
        coms.month = month
        coms.day = day
        coms.hour = hour
        coms.minute = minute
        coms.second = second
        return cal.date(byAdding: coms, to: self)!
    }
}
