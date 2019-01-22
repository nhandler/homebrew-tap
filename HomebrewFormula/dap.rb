class Dap < Formula
  desc "Deckset Auto Preview"
  homepage "https://github.com/nhandler/dap"
  url "https://github.com/nhandler/dap/archive/v0.0.1.tar.gz"
  sha256 "4fd38763a77e4295664b69f4608a55adf8a42de18a1eb23250024f4001ce857d"

  depends_on "fswatch"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script (libexec/"dap")
    bin.write_exec_script (libexec/"dap.applescript")
  end

  plist_options :startup => true

  def plist; <<~EOS
       <?xml version="1.0" encoding="UTF-8"?>
       <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
       <plist version="1.0">
         <dict>
    <key>KeepAlive</key>
    <true/>
    <key>RunAtLoad</key>
    <true/>
    <key>Label</key>
    <string>com.nhandler.dap</string>
    <key>ProgramArguments</key>
    <array>
    	<string>/bin/bash</string>
    	<string>/usr/local/bin/dap</string>
    </array>
         </dict>
       </plist>
  EOS
  end
end
