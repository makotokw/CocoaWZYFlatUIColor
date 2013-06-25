#
# Be sure to run `pod spec lint FlatUIColor.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://docs.cocoapods.org/specification.html
#
Pod::Spec.new do |s|
  s.name         = "FlatUIColor"
  s.version      = "0.0.1"
  s.summary      = "Added FlatUI color properties to UIColor."
  # s.description  = <<-DESC
  #                   Added FlatUI color properties to UIColor.
  #                  DESC
  s.homepage     = "https://github.com/makotokw/CocoaFlatUIColor"
  s.license      = 'MIT'
  s.author       = { "makoto_kw" => "makoto.kw@gmail.com" }
  s.source       = { :git => "https://github.com/makotokw/CocoaFlatUIColor.git", :tag => "0.0.1" }

  s.platform     = :ios, '5.0'
  s.source_files = '*.{h,m}'
  s.framework  = 'UIKit'
  s.requires_arc = true
end
