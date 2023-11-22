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

  s.ios.deployment_target = '10.0'

  s.source_files = 'XYGamesKit/Classes/**/*'

end
