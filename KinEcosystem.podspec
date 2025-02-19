Pod::Spec.new do |s|
  s.name             = 'KinEcosystem'
  s.version          = '1.2.7'
  s.summary          = 'Kin Ecosystem mobile sdk for iOS'
  s.description      = <<-DESC
Kin ecosystem mobile sdk for iOS
                       DESC

  s.homepage         = 'https://kinecosystem.org'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Kin' => 'kin@kinfoundation.com' }
  s.source           = { :git => 'https://github.com/kinfoundation/kin-ecosystem-ios-sdk.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.resource_bundles = { "kinFonts" => ["KinEcosystem/KinEcosystem/fonts/*.otf"] }
  s.resource_bundles = { "kinLocalization" => ["KinEcosystem/KinEcosystem/*.lproj/*.strings"] }
  s.resource_bundles = { "KinEcosystem" => ['KinEcosystem/KinEcosystem/**/*.{xcassets,xcdatamodeld,storyboard,xib,png,pdf,jpg,json,strings,otf,ttf}',"KinEcosystem/KinEcosystem/*.lproj/*.strings"] }
  s.source_files = 'KinEcosystem/KinEcosystem/**/*.{h,m,swift}'
  s.resources = 'KinEcosystem/KinEcosystem/**/*.{xcassets,xcdatamodeld,storyboard,xib,png,pdf,jpg,json,strings,otf,ttf}'
  s.swift_version = '4.2'

  s.dependency 'KinMigrationModule', '0.1.0'
  s.dependency 'KinAppreciationModuleOptionsMenu', '0.0.4'
 
  s.app_spec 'SampleApp' do |as|
    root = 'KinEcosystemSampleApp/EcosystemSampleApp'
    as.pod_target_xcconfig = { 'INFOPLIST_FILE' => '${PODS_TARGET_SRCROOT}/'+root+'/Info.plist' }
    as.source_files        = [root+'/**/*.{swift}', root+'/defaultConfig.plist']
    as.resources           = root+'/**/*.{storyboard,xcassets}'

    as.dependency 'JWT', '3.0.0-beta.11'
    as.dependency 'HockeySDK'
  end
end
