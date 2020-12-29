
Pod::Spec.new do |s|

s.name="MSDeallocCallBack"
s.version="1.0.0"
s.summary="MSDeallocCallBack"
s.homepage="https://github.com/sureJiang0/MSDeallocCallback.git"
s.license={:type=>"MIT",:file=>"LICENSE"}
s.author={"jiang.zijia"=>"1140752635@qq.com"}
s.platform=:ios,"5.0"
s.source={:git => "https://github.com/sureJiang0/MSDeallocCallback.git",:tag=> s.version }
s.source_files  = "DeallocCallback/NSObject+MSDeallocCallBack.{h,m}"

s.requires_arc=true

end
