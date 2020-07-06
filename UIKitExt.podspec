Pod::Spec.new do |s|
  s.name         = "UIKitExt"
  s.version      = "1.3.3"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.summary      = "Convenience functions for UIKit"
  s.homepage     = "https://github.com/marcbaldwin/UIKitExt"
  s.author       = { "marcbaldwin" => "marc.baldwin88@gmail.com" }
  s.source       = { :git => "https://github.com/marcbaldwin/UIKitExt.git", :tag => s.version }
  s.source_files = "UIKitExt/source/*.swift"
  s.platform     = :ios, '9.0'
  s.frameworks   = "Foundation", "UIKit"
  s.swift_version = '5.0'
end
