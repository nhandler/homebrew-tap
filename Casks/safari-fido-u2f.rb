cask 'safari-fido-u2f' do
  version '2.0b5'
  sha256 '74b80df7997b6d0811a32a31fa6cc29058d0ee4027bd0f784f1d8abf9561f612'

  url 'https://github.com/Safari-FIDO-U2F/Safari-FIDO-U2F/releases/download/2.0b5/Safari.FIDO.U2F.zip'
  name 'Safari FIDO U2F'
  homepage 'https://github.com/Safari-FIDO-U2F/Safari-FIDO-U2F'

  app 'Safari FIDO U2F.app'

  caveats <<~EOS
    Run the application.
    Quit Safari (if it is open).
    Click `Open Safari Preferences`.
    Enable the `Safari FIDO U2F Extension`
  EOS
end
