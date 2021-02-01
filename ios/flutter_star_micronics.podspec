#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_star_micronics.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_star_micronics'
  s.version          = '0.0.1'
  s.summary          = 'Star Micronics printer for Flutter'
  s.description      = <<-DESC
Star Micronics printer for Flutter
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'StarIO' ,'2.8.2' 
  s.dependency 'StarIO_Extension' , '1.15.0'
  s.dependency 'StarIODeviceSetting' , '1.0.0'
  s.platform = :ios, '10.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
