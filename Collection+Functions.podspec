#
#  Be sure to run `pod spec lint Collection+Functions.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "Collection+Functions"
  s.version      = "0.0.1"
  s.summary      = "为Objective-C 集合类扩展一些功能性函数"
  s.description  = <<-DESC
                  为Objective-C 集合类扩展一些功能性函数
                   DESC

  s.homepage     = "https://github.com/Ramonfan"
  s.license = { :type => "Apache License, Version 2.0", :file => "LICENSE" }
  s.author             = { "Ramonfan" => "fqmlemon@sina.com" }

  s.platform     = :ios, "8.0"

  s.ios.deployment_target = "8.0"
  s.source       = { :git => "git@github.com:Ramonfan/Collection-Functions.git", :tag => "#{s.version}" }

  s.source_files  = "Classes", "Collection+Functions/Sources/**/*.{h,m}"

  s.public_header_files = "Collection+Functions/Sources/**/*.h"

  s.framework  = "Foundation"

  s.requires_arc = true
end
