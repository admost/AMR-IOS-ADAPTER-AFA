Pod::Spec.new do |s|
  s.name             = 'AMRAdapterAFA-Beta'
  s.version          = '1.2.0.0'
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
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'armv7 arm64 x86_64' }
  s.dependency 'AMRSDK-Beta', '~> 1.5.17'
  s.dependency 'AdmostFairAds', '~> 1.2.0'
  s.vendored_frameworks = 'AMRAdapterAFA/Libs/AMRAdapterAFA.xcframework'
end
