Pod::Spec.new do |s|
  s.name             = "ROKOBorocco"
  s.version          = "0.1.3"
  s.license          = 'MIT'
  s.homepage         = "https://github.com/maslovsa/ROKOComponents"
  s.author           = { "Maslov Sergey" => "sergey.maslov@rokolabs.com" }
  s.summary          = "Very well ROKOBorocco."
  s.source           = { :git => "https://github.com/maslovsa/ROKOComponents.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/maslovsa'
  s.platform         = :ios, '7.0'
  s.requires_arc     = true

  #s.subspec 'Core' do |ss|
  #    ss.frameworks      = 'SystemConfiguration', 'CFNetwork', 'CoreTelephony', 'CoreGraphics', 'CoreLocation', 'Foundation', 'UIKit'
  #    ss.vendored_frameworks = 'Frameworks/*.framework'
  #end
  
  s.vendored_frameworks = 'Frameworks/ROKOComponents.framework', 
                          'Frameworks/ROKOStickers.framework', 
                          'Frameworks/ROKOShare.framework'

  s.public_header_files = 'Frameworks/ROKOComponents.framework/Versions/A/Headers/*.h',
                          'Frameworks/ROKOStickers.framework/Versions/A/Headers/*.h',
                          'Frameworks/ROKOShare.framework/Versions/A/Headers/*.h'

  s.resource_bundles = {
    'ROKOShare' => ['Assets/ROKOShare.bundle'],
    'ROKOStickers' => ['Assets/ROKOStickers.bundle']
  }

  # s.subspec 'ROKOShare' do |ss|
  #    ss.dependency        'ROKOBorocco/Core'
  #    ss.vendored_frameworks = 'Frameworks/ROKOShare.framework'
  #    # ss.source_files    = 'Frameworks/MADMobusiAdMediation/*.{h,m}'
  # end


#   s.resource_bundles = {
#    'ROKOShare' => ['Assets/ROKOShare.bundle'],
#    'ROKOStickers' => ['Assets/ROKOStickers.bundle']
#  }
end
