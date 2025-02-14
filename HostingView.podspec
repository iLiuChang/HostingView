Pod::Spec.new do |s|
  s.name         = "HostingView"
  s.version      = "1.0.0"
  s.summary      = "Similar to UIHostingController in SwiftUI."
  s.homepage     = "https://github.com/iLiuChang/HostingView"
  s.license      = "MIT"
  s.authors      = { "iLiuChang" => "iliuchang@foxmail.com" }
  s.platform     = :ios, "13.0"
  s.source       = { :git => "https://github.com/iLiuChang/HostingView.git", :tag => s.version }
  s.requires_arc = true
  s.swift_version = "5.0"
  s.source_files = "Source/*.{swift}"
end
