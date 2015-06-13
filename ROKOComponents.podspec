#
# Be sure to run `pod lib lint ROKOComponents.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ROKOComponents"
  s.version          = "0.1.3"
  s.summary          = "Very well ROKOComponents."
  s.description      = "Verbose desc ROKOComponents.................."
  s.homepage         = "https://github.com/maslovsa/ROKOComponents"
  s.license          = 'MIT'
  s.author           = { "Maslov Sergey" => "sergey.maslov@rokolabs.com" }
  s.source           = { :git => "https://github.com/maslovsa/ROKOComponents.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  # s.source_files = 'Classes/*.m'
  s.resource_bundles = {
    'ROKOShare' => ['Assets/ROKOShare.bundle'],
    'ROKOStickers' => ['Assets/ROKOStickers.bundle']
  }

  s.vendored_frameworks = 'Frameworks/ROKOComponents.framework', 
                          'Frameworks/ROKOStickers.framework', 
                          'Frameworks/ROKOShare.framework'

  s.public_header_files = 'Frameworks/ROKOComponents.framework/Versions/A/Headers/*.h',
                          'Frameworks/ROKOStickers.framework/Versions/A/Headers/*.h',
                          'Frameworks/ROKOShare.framework/Versions/A/Headers/*.h'
 
  # s.frameworks = 'Foundation', 'UIKit',
  
end
