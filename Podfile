platform :ios, '12.0'
inhibit_all_warnings!
use_frameworks!

post_install do |installer|
  installer.pods_project.build_configurations.each do |config|
    config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
  end

  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
    end
  end
end

target 'Pokedex' do
   # just for Rugby
   pod 'iCarousel'
   
   target 'PokedexTests' do
    inherit! :search_paths
  end
end