Pod::Spec.new do |s|
  s.name             = "RxBluetoothKit2"
  s.version          = "6.0.1-rc1"
  s.summary          = "Bluetooth library for RxSwift"

  s.description      = "RxBluetoothKit is lightweight and easy to use Rx support for CoreBluetooth. Minor update for use with iOS15"

  s.homepage         = "https://github.com/ferdinandurban/RxBluetoothKit"
  s.license          = 'Apache License, Version 2.0.'
  s.author           = { "Przemysław Lenart" => "przemek.lenart@polidea.com", "Kacper Harasim" => "kacper.harasim@polidea.com", "Michał Laskowski" => "michal.laskowski@polidea.com", "Paweł Janeczek" => "pawel.janeczek@polidea.com", "Bartosz Stelmaszuk" => "bartosz.stelmaszuk@polidea.com" }
  s.source           = { :git => "https://github.com/ferdinandurban/RxBluetoothKit.git", :tag => s.version.to_s }
  s.social_media_url = ''

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.13'
  s.watchos.deployment_target = '4.0'
  s.tvos.deployment_target = '11.0'
  s.swift_version = '5.0'

  s.requires_arc = true

  s.source_files = 'Source/*.swift'
  s.osx.exclude_files = 'Source/RestoredState.swift', 'Source/CentralManager+RestoredState.swift', 'Source/CentralManagerRestoredState.swift'
  s.frameworks   = 'CoreBluetooth'
  s.dependency 'RxSwift', '~> 5.1'
end
