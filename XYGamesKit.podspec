Pod::Spec.new do |s|
  s.name             = 'XYGamesKit'
  s.version          = '0.1.0'
  s.summary          = 'XYGamesKit.'

  s.description      = <<-DESC
  XYGamesKit 游戏 SDK.
                       DESC

  s.homepage         = 'https://github.com/MF-dosear/XYGamesKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Paul' => 'dosear@qq.com' }
  s.source           = { :git => 'https://github.com/MF-dosear/XYGamesKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'

  s.source_files = 'XYGamesKit/Classes/**/*'
  
  # 指定 Swift 语言版本，Swift 项目需要设置这个
  s.swift_version = '5.0'

end
