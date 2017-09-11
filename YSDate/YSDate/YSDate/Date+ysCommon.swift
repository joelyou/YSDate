import Foundation

extension NSDate{
    
    /// 是否包含当天
    public func ys_isInByDay(array:[NSDate],calendar:Calendar? = nil) -> Bool{
        let arr = array.map { (nsDate) -> Date in
            return nsDate as Date
        }
        
        let start = (self as Date).ys_start()
        let end = (self as Date).ys_end()
        
        for date in arr{
            if start <= date && date <= end{
                return true
            }
        }
        return false
    }
    
    /// 转换为Date
    public func ys_date() -> Date{
        return self as Date
    }
}

extension Date{
    
    /// 转换为NSDate
    public func ys_nsDate() -> NSDate{
        return self as NSDate
    }
}
