Pod::Spec.new do |s|
  s.name         = "IDMPhotoBrowser"
  s.version      = "1.2.4"
  s.summary      = "IDMPhotoBrowser."
  s.homepage     = "https://github.com/appkraft/IDMPhotoBrowser"

  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { "Appkraft" => "all@appkraft.net" }
  s.source       = { 
    :git => "https://github.com/appkraft/IDMPhotoBrowser.git", 
    :tag => "1.2.4"
  }

  s.platform     = :ios, '5.0'
  
  s.source_files = 'Classes/*.{h,m}'
  s.resources = 'Classes/IDMPhotoBrowser.bundle'

  s.framework = 'MessageUI', 'QuartzCore'
  
  s.dependency 'DACircularProgress', '~> 2.1.0'
  s.dependency 'SVProgressHUD', '~> 0.9'
  
  s.requires_arc = true
  
   s.subspec 'Network' do |ns|
     ns.source_files   = 'Code/Network.h', 'Code/Network'
     ns.ios.frameworks = 'CFNetwork', 'Security', 'MobileCoreServices', 'SystemConfiguration'
     ns.osx.frameworks = 'CoreServices', 'Security', 'SystemConfiguration'
     ns.dependency       'SOCKit'
     ns.dependency       'AFNetworking', '~> 1.3.1'
     ns.dependency       'RestKit/ObjectMapping'
     ns.dependency       'RestKit/Support'
    
     ns.prefix_header_contents = <<-EOS
 #import <Availability.h>

 #define _AFNETWORKING_PIN_SSL_CERTIFICATES_

 #if __IPHONE_OS_VERSION_MIN_REQUIRED
   #import <SystemConfiguration/SystemConfiguration.h>
   #import <MobileCoreServices/MobileCoreServices.h>
   #import <Security/Security.h>
 #else
   #import <SystemConfiguration/SystemConfiguration.h>
   #import <CoreServices/CoreServices.h>
   #import <Security/Security.h>
 #endif
 EOS
   end
  
end