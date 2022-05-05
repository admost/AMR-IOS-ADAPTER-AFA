Pod::Spec.new do |s|
  s.name             = 'AMRAdapterAFA'
  s.version          = '1.1.2.2'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited. 
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Admost Fair Ads adapter for AMR SDK.'
  s.description      = 'AMR AFA adapter allows publishers to mediate AFA interstitial and rewarded ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-AFA.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios'
  s.platform 			= :ios
  s.ios.deployment_target = '9.0'
  s.pod_target_xcconfig = { 
    "VALID_ARCHS": "arm64 armv7 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'armv7 arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
  s.dependency 'AMRSDK', '~> 1.5.15'
  s.dependency 'AdmostFairAds', '~> 1.1.2'
  s.vendored_frameworks = 'AMRAdapterAFA/Libs/AMRAdapterAFA.xcframework'
end
