import Foundation

extension Date{
    
    /// 组件集合
    public func ys_components(calendar:Calendar? = nil) -> DateComponents{
        let cal = calendar == nil ? Calendar.current : calendar!
        return cal.dateComponents([.year,.month,.day,.hour,.minute,.second,.nanosecond,.weekday,.era,.quarter,.timeZone,.weekdayOrdinal,.weekOfMonth,.weekOfYear,.yearForWeekOfYear,.calendar], from: self)
    }
}
