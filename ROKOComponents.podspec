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
  s.version          = "0.1.1"
  s.summary          = "Very well ROKOComponents."
  s.description      = "Verbose desc ROKOComponents.................."
  s.homepage         = "https://github.com/maslovsa/ROKOComponents"
  s.license          = 'MIT'
  s.author           = { "Maslov Sergey" => "sergey.maslov@rokolabs.com" }
  s.source           = { :git => "https://github.com/maslovsa/ROKOComponents.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/maslovsa'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'ROKOComponents' => ['Pod/Assets/*']
  }

  s.vendored_frameworks = 'ROKOComponents.framework'
  # s.preserve_paths      = 'Frameworks/ROKOComponents.framework'

  s.public_header_files = 'Frameworks/ROKOComponents.framework/Headers/*.h'

  # s.frameworks = 'Foundation', 'UIKit', 'MapKit'
  
end
