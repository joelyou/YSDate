Pod::Spec.new do |s|
s.name         = "YSDate"
s.version      = "0.0.1"
s.summary      = "YSDate是一个关于日期操作的框架"
s.homepage     = "https://github.com/yscode001/YSDate"
s.license      = "MIT"
s.author             = { "ys" => "yscode@126.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/yscode001/YSDate.git", :tag => "#{s.version}" }
s.source_files  = "YSDate/YSDate/YSDate/YSDate/*.swift"
s.frameworks = "UIKit"
# s.dependency "JSONKit", "~> 1.4"
# s.dependency "SnapKit"
end
