import Foundation

extension String{
    
    /// 转为日期
    public func ys_date(format:String, locale:Locale? = nil) -> Date?{
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.locale = locale == nil ? Locale.current : locale
        return formatter.date(from: self)
    }
}

extension Date{
    
    /// 转为日期
    public static func ys_date(dateString:String,format:String, locale:Locale? = nil) -> Date?{
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.locale = locale == nil ? Locale.current : locale
        return formatter.date(from: dateString)
    }
    
    /// 转为字符串
    public func ys_string(format:String, locale:Locale? = nil) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
        formatter.locale = locale == nil ? Locale.current : locale
        return formatter.string(from: self)
    }
    
    /// 离指定日期最近的日期
    public func ys_nearDay(list:[Date], locale:Locale? = nil,calendar:Calendar? = nil) -> Date{
        var day = self
        var count = Int.max
        for d in list{
            let dayCount = abs(d.ys_dayCount(date: self,locale: locale,calendar: calendar))
            if dayCount < count{
                count = dayCount
                day = d
            }
        }
        return day
    }
}
