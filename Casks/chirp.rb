cask 'chirp' do
  version '20221217'
  sha256 "0e974006c8dd3fb609c52fb13d3932384acca51d6bcf377f5f0c733b1c160aab"

  url "https://trac.chirp.danplanet.com/chirp_daily/daily-#{version}/chirp-unified-daily-#{version}.app.zip"
  name 'CHIRP'
  homepage 'https://chirp.danplanet.com/projects/chirp/wiki/Home'

  app 'CHIRP.app'

  livecheck do
    url "https://trac.chirp.danplanet.com/chirp_daily/LATEST/"
    strategy :page_match
    regex(%r{href=\"chirp-unified-daily-(\d+)\.app\.zip\"})
  end
end
