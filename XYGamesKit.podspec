Pod::Spec.new do |s|
  s.name             = 'XYGamesKit'
  s.platform         = :ios, '12.0'
  s.version          = '1.0.0'
  s.summary          = 'XYGamesKit.'

  s.description      = <<-DESC
  XYGamesKit 游戏 SDK.
                       DESC

  s.homepage         = 'https://github.com/MF-dosear/XYGamesKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Paul' => 'dosear@qq.com' }
  s.source           = { :git => 'https://github.com/MF-dosear/XYGamesKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'

  s.requires_arc = true
  
  s.swift_version = ['5']
  
  valid_archs = ['arm64']

  s.frameworks  = 'CoreFoundation','SystemConfiguration','CFNetwork','UIKit','StoreKit','CoreTelephony','Security','AdSupport'
  
  s.libraries = 'z','sqlite3','c++'


  s.resource_bundles = {
      'XYGamesKit' => ['XYGamesKit/Assets/*']
  }
  
  s.source_files = 'XYGamesKit/Classes/**/*','XYGamesKit/Libraries/**/*.h'
  
  s.vendored_libraries = 'XYGamesKit/Libraries/**/*.a'

  s.vendored_frameworks = 'XYGamesKit/Frameworks/**/*.framework'
  s.resources = ['XYGamesKit/Frameworks/**/*.bundle','XYGamesKit/Libraries/**/*.bundle']
  
  s.dependency 'SVProgressHUD','~> 2.3.1'
  s.dependency 'CryptoSwift','~> 1.8.0'
  s.dependency 'SnapKit','~> 5.6.0'
  s.dependency 'RxSwift','~> 6.6.0'
  s.dependency 'RxCocoa','~> 6.6.0'

end
