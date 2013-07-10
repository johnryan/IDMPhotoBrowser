Pod::Spec.new do |s|
  s.name         = "IDMPhotoBrowser"
  s.version      = "0.1"
  s.summary      = "IDMPhotoBrowser."
  s.homepage     = "https://github.com/appkraft/IDMPhotoBrowser"

  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Appkraft" => "all@appkraft.net" }
  s.source       = { 
    :git => "https://github.com/appkraft/IDMPhotoBrowser.git", 
    :tag => "0.1"
  }

  s.platform     = :ios, '5.0'
  
  # s.source_files = '*.{h,m}'
  s.source_files = 'Classes'

  s.requires_arc = true
end