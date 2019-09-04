cask 'kse' do
  version '542'
  sha256 '8f9b9b6c1d84f07772261778af37d69ab8e16defabe924a33472e4e10b743eb5'

  url 'https://github.com/kaikramer/keystore-explorer/releases/download/v5.4.2/kse-542.dmg'
  appcast 'https://keystore-explorer.org/downloads.html'
  name 'KeyStore Explorer'
  homepage 'https://keystore-explorer.org'

  app 'KeyStore Explorer.app'
end
