

Pod::Spec.new do |s|
  s.name             = 'MTSetting'
  s.version          = ‘1.0.2’
  s.summary          = '设置界面、个人中心界面快捷搭建.'

  s.description      = <<-DESC
设置界面、个人中心界面快捷搭建，多种类型可供选择
                       DESC
  s.homepage         = 'https://github.com/MrTung/MTSetting'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MrTung' => '287178790@qq.com' }
  s.source           = { :git => 'https://github.com/MrTung/MTSetting.git', :tag => “1.0.2” }

  s.ios.deployment_target = '7.0'

  #s.source_files = 'MTSetting/Classes/**
  s.source_files = 'MTSetting/Classes/Cateogrys/*.{h,m}','MTSetting/Classes/Classes/*.{h,m}',

  s.resources    = 'MTSetting/Classes/Settings.bundle'  
end
