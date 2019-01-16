class Uq < Formula
  desc "Universal serialized data reader to JSON"
  homepage "https://github.com/solarkennedy/uq"
  url "https://github.com/solarkennedy/uq/archive/0.0.3.tar.gz"
  sha256 "45dc01355ffb0c415777b12442efb14bef8dafe03c79cf3f016f0300ab89bfce"

  depends_on "dep" => :build
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    bin_path = buildpath/"src/github.com/solarkennedy/uq"
    bin_path.install buildpath.children
    cd bin_path do
      system "dep", "ensure", "-vendor-only"
      system "go", "build", "-ldflags", "-X main.version=0.0.3", "-o", bin/"uq", "."
      prefix.install_metafiles
    end
  end

  test do
    system "#{bin}/uq", "--version"
  end
end
