#
# Be sure to run `pod lib lint BaseWork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BaseWork'
  s.version          = '0.2.0'
  s.summary          = '基础类'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/excsir/CLBasicWork.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'excsir@163.com' => 'excsir@163.com' }
  s.source           = { :git => 'https://github.com/excsir/CLBasicWork.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'BaseWork/Classes/**/*'


  s.subspec 'MyViewCell' do |ss|
    ss.source_files = 'BaseWork/Classes/MyViewCell/*'
    ss.public_header_files = 'BaseWork/Classes/MyViewCell/*.h'
  end
  
  s.resource_bundles = {
    'BaseWork' => ['BaseWork/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
