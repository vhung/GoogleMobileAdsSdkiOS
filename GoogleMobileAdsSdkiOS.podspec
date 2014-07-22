Pod::Spec.new do |s|
  s.name = 'GoogleMobileAdsSdkiOS'
  s.platform = :ios, '4.3'
  s.version = '6.10.0'
  s.summary = 'Google Mobile Ads SDK for iOS.'
  s.description = <<-DESC
  This is the Google Mobile Ads SDK for iOS.

  Requirements:
  - An AdMob site ID or DoubleClick for Publishers account.
  - Xcode 5.1 or later.
  - Runtime of iOS 5.0 or later.

  The latest documentation and code samples are available at:
  https://developers.google.com/mobile-ads-sdk/docs/
  DESC
  s.homepage = 'https://developers.google.com/mobile-ads-sdk/docs/'
  s.author = 'Google Inc.'
  s.license = {
    :type => 'commercial',
    :text => 'Copyright 2011 - 2014 Google, Inc. All rights reserved.'
  }

  s.source = {
    :git => 'https://github.com/vhung/GoogleMobileAdsSdkiOS',
    :tag => s.version.to_s
  }
  s.preserve_paths = 'libGoogleAdMobAds.a'
  s.source_files = '*.h', 'Add-ons/Search/*.h', 'Add-ons/Mediation/*.h', 'Add-ons/DoubleClick/*.h'
  s.library = 'GoogleAdMobAds'
  s.frameworks = 'StoreKit', 'AudioToolbox', 'AVFoundation', 'MessageUI', 'SystemConfiguration', 'CoreGraphics'
  s.weak_frameworks = 'AdSupport'
  s.xcconfig  =  { 'OTHER_LDFLAGS' => '-ObjC', 'LIBRARY_SEARCH_PATHS' => '"$(SRCROOT)/Pods/GoogleMobileAdsSdkiOS"' }
end