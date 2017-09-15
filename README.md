# YSDate
关于日期类型的计算_swift编写

## 使用步骤 
1、导入框架

pod 'YSDate'

2、导入命名空间

import YSDate

### 日期部分
let year:Int? = Date().ys_components().year

let month:Int? = Date().ys_components().month

let day:Int? = Date().ys_components().day

…………

### 日期计算
let d1 = Date().ys_addYear(year: 1)

let d2 = Date().ys_addMonth(month: 1)

let d3 = Date().ys_addDay(day: 1)

let d4 = Date().ys_addHour(hour: 1)

let d5 = Date().ys_addMinute(minute: 1)

let d6 = Date().ys_addSecond(second: 1)

let d7 = Date().ys_add(year: 1, month: 1, day: 1, hour: 1, minute: 1, second: 1)

let d8 = Date().ys_reset(hour: 1, minute: 1, second: 1)

### 日期转换
let d = "2017-9-15".ys_date(format: "yyyy-MM-dd")

let str = Date().ys_string(format: "yyyy-MM-dd")

### 日期开始/结束
let dayStart = Date().ys_start()

let dayEnd = Date().ys_end()

let monthStart = Date().ys_monthStart()

let monthEnd = Date().ys_monthEnd()

let yearStart = Date().ys_yearStart()

let yearEnd = Date().ys_yearEnd()

### 某月的天数
let count = Date().ys_dayCountInMonth()

### 日期判断
let today = Date().ys_isInToday()

let tomorrow = Date().ys_isInTomorrow()

let yesterday = Date().ys_isInYesterday()

let same = Date().ys_isInSameDay(date: Date(), calendar: nil)

### 两个日期相距天数
let count = Date().ys_dayCount(date: Date())

### Date与NSDate互转
let nsDate = Date().ys_nsDate()

let date = NSDate().ys_date()

### 其他功能
都是以ys_开头，打开看即可。
