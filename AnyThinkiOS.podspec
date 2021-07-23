Pod::Spec.new do |spec|
  spec.name         = "AnyThinkiOS"
  spec.version      = "5.7.57"
  spec.summary      = "A short description of AnyThink SDK for iOS."
  spec.description  = <<-DESC
            TopOn SDK for developer
                   DESC
  spec.homepage     = "https://github.com/anythinkteam/sdk_ios_cocoapod"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "topon" => "developer@toponad.com" }
  spec.source       = { :git => "https://github.com/toponteam/sdk_ios_cocoapod.git", :tag => spec.version }
  spec.platform     = :ios, '8.0'
  spec.ios.deployment_target = '8.0'
  spec.requires_arc = true
  spec.frameworks = 'SystemConfiguration', 'CoreGraphics','Foundation','UIKit'
  
  spec.pod_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  spec.libraries = 'c++', 'z', 'sqlite3', 'xml2', 'resolv'
  spec.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 armv7s arm64' }
  spec.default_subspecs = 'AnyThinkSDK'

  spec.subspec 'AnyThinkSDK' do |ss|
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThink{Banner,Splash,SDK,RewardedVideo,Interstitial,Native}.framework'
     ss.resource = 'AnyThinkiOS/AnyThinkSDK.bundle'
  end

  spec.subspec 'AnyThinkPangleAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkPangle*.framework'
  end
  
  spec.subspec 'AnyThinkFacebookAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkFacebook*.framework'
  end
  
  spec.subspec 'AnyThinkAdmobAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkAdmob*.framework'
  end
   
  spec.subspec 'AnyThinkInmobiAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkInmobi*.framework'
  end
  
  spec.subspec 'AnyThinkApplovinAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkApplovin*.framework'
  end

  spec.subspec 'AnyThinkMopubAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkMopub*.framework'
  end
  
  spec.subspec 'AnyThinkMintegralAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkMintegral*.framework'
  end
  
  spec.subspec 'AnyThinkGDTAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkGDT*.framework'
  end
  
  spec.subspec 'AnyThinkAppnextAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkAppnext*.framework'
  end
  
  spec.subspec 'AnyThinkChartboostAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkChartboost*.framework'
  end
  
  spec.subspec 'AnyThinkIronSourceAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkIronSource*.framework'
  end
  
  spec.subspec 'AnyThinkVungleAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkVungle*.framework'
  end
  
  spec.subspec 'AnyThinkAdcolonyAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkAdColony*.framework'
  end
  
  spec.subspec 'AnyThinkUnityAdsAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkUnityAds*.framework'
  end
  
  spec.subspec 'AnyThinkTapjoyAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkTapjoy*.framework'
  end
  
  spec.subspec 'AnyThinkBaiduAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkBaidu*.framework'
  end
  
  spec.subspec 'AnyThinkNendAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkNend*.framework'
  end
  
  #Nend embedded framework not support
  
  spec.subspec 'AnyThinkMaioAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkMaio*.framework'
  end
  
  spec.subspec 'AnyThinkKSAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkKuaiShou*.framework'
  end
  
  spec.subspec 'AnyThinkSigmobAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkSigmob*.framework'
  end
  
  spec.subspec 'AnyThinkOguryAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkOgury*.framework'
  end

  spec.subspec 'AnyThinkStartAppAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkStartApp*.framework'
  end

  spec.subspec 'AnyThinkFyberAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkFyber*.framework'
  end

  spec.subspec 'AnyThinkKidozAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkKidoz*.framework'
  end

  spec.subspec 'AnyThinkMyTargetAdapter' do |ss|
     ss.dependency 'AnyThinkiOS/AnyThinkSDK'
     ss.ios.deployment_target = '8.0'
     ss.vendored_frameworks = 'AnyThinkiOS/AnyThinkMyTarget*.framework'
  end

end
