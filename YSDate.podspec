Pod::Spec.new do |s|
s.name         = "YSDate"
s.version      = "1.0.0"
s.summary      = "YSDate是用swift编写的一个关于日期操作的框架"
s.homepage     = "https://github.com/yscode001/YSDate"
s.license      = "MIT"
s.author       = { "ys" => "yscode@126.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/yscode001/YSDate.git", :tag => "#{s.version}" }
s.source_files  = "YSDate/YSDate/YSDate/*.swift"
s.frameworks = "UIKit"
end
