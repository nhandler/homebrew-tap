class Uq < Formula
  desc "Universal serialized data reader to JSON"
  homepage "https://github.com/solarkennedy/uq"
  url "https://github.com/solarkennedy/uq/archive/2cc230bbf695a83b7939adea3b2cdf7952df664e.tar.gz"
  version "0.0.2"
  sha256 "ca4a92010344ce91e85c2ea7e7fab1030f9eb2b57c7ad68aecdcc0359de57c1a"

  depends_on "dep" => :build
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    bin_path = buildpath/"src/github.com/solarkennedy/uq"
    bin_path.install buildpath.children
    cd bin_path do
      system "dep", "ensure", "-vendor-only"
      system "go", "build", "-o", bin/"uq", "."
      prefix.install_metafiles
    end
  end

  test do
    system "#{bin}/uq", "--version"
  end
end
