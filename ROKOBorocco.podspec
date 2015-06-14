Pod::Spec.new do |s|
  s.name             = "ROKOBorocco"
  s.version          = "0.1.8"
  s.license          = 'MIT'
  s.homepage         = "https://github.com/maslovsa/ROKOComponents"
  s.authors          = { "Alexey Golovenkov" => "alexey.golovenkov@rokolabs.com",
                         "Denis Kempest" => "denis.kempest@rokolabs.com",  
                         "Sergey Maslov" => "sergey.maslov@rokolabs.com" }
  s.summary          = "Very well ROKOBorocco."
  s.source           = { :git => "https://github.com/maslovsa/ROKOComponents.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/rokolabs'
  s.platform         = :ios, '7.0'
  s.requires_arc     = true
  s.default_subspec  = 'Core','Share','Stickers'
  
  s.subspec 'Core' do |ss|
      ss.frameworks      = 'SystemConfiguration', 'CFNetwork', 'CoreTelephony', 'CoreGraphics', 'CoreLocation', 'Foundation', 'UIKit'
      ss.vendored_frameworks = 'Frameworks/ROKOComponents.framework'
      ss.public_header_files = 'Frameworks/ROKOComponents.framework/Versions/A/Headers/*.h'
  end
  
  s.subspec 'Share' do |ss|
      # ss.dependency        'ROKOBorocco/Core'
      ss.frameworks      = 'Accelerate'
      ss.vendored_frameworks = 'Frameworks/ROKOShare.framework'
      ss.public_header_files = 'Frameworks/ROKOShare.framework/Versions/A/Headers/*.h'
      ss.resource_bundles = {'ROKOShare' => ['Resources/ROKOShare.bundle']}
  end

  s.subspec 'Stickers' do |ss|
      # ss.dependency        'ROKOBorocco/Share'
      ss.frameworks      = 'CoreFoundation'
      ss.vendored_frameworks = 'Frameworks/ROKOStickers.framework'
      ss.public_header_files = 'Frameworks/ROKOStickers.framework/Versions/A/Headers/*.h'
      ss.resource_bundles = {'ROKOStickers' => ['Resources/ROKOStickers.bundle']}
  end  

end
