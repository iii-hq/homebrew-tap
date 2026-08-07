class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.22.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.22.1/iii-aarch64-apple-darwin.tar.gz"
      sha256 "2b309019b909a896cae874dc947e2cdf877b4f3c51dd026b79850af858517fa4"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.22.1/iii-x86_64-apple-darwin.tar.gz"
      sha256 "6d33940db2d3ad6a9aef9837aa5b89bf5c5e4acd0679e8178fec258af229d7e1"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
