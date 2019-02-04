cask 'yubikey-manager' do
  version '1.1.0'
  sha256 '0b27bda2df1d4025bb7aee074db205c0da28fcf5dd8050d9cd5b16faeeb16894'

  url 'https://developers.yubico.com/yubikey-manager-qt/Releases/yubikey-manager-qt-1.1.0-mac.pkg'
  name 'YubiKey Manager'
  homepage 'https://www.yubico.com/products/services-software/download/yubikey-manager/'

  pkg "yubikey-manager-qt-#{version}-mac.pkg"

  uninstall pkgutil: 'com.yubico.ykman'
end
