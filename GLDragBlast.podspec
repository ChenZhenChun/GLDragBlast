Pod::Spec.new do |s|
#name必须与文件名一致
s.name              = "GLDragBlast"

#更新代码必须修改版本号
s.version           = "0.0.1"
s.summary           = "仿QQ小红点拖拽爆炸消除"
s.description       = <<-DESC
It is a GLDragBlast used on iOS, which implement by Objective-C.
DESC
s.homepage          = "https://github.com/ChenZhenChun/GLDragBlast"
s.license           = 'MIT'
s.author            = { "ChenZhenChun" => "346891964@qq.com" }

#submodules 是否支持子模块
s.source            = { :git => "https://github.com/ChenZhenChun/GLDragBlast.git", :tag => s.version, :submodules => true}
s.platform          = :ios, '7.0'
s.requires_arc = true

#source_files路径是相对podspec文件的路径

#核心模块
s.subspec 'GLDragBlast' do |ss|
ss.source_files = 'GLDragBlast/GLDragBlast/*.{h,m}'
ss.public_header_files = 'GLDragBlast/GLDragBlast/*.h'
end

#子模块image(存放图片)
s.subspec 'image' do |ss|
ss.resources = 'GLDragBlast/image/*.png'
end

s.frameworks = 'Foundation', 'UIKit'

# s.ios.exclude_files = 'Classes/osx'
# s.osx.exclude_files = 'Classes/ios'
# s.public_header_files = 'Classes/**/*.h'

end
