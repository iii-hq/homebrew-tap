class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.19.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.3/iii-aarch64-apple-darwin.tar.gz"
      sha256 "b64b92ddb5b702c4d49990ba6f0eb110acde3865b7caf9cbcf1262a1de1da3ad"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.3/iii-x86_64-apple-darwin.tar.gz"
      sha256 "5dac09c8bbc4c87de052eeb483dcfa426c622973d1a84cf69c2a53a95af063fe"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
