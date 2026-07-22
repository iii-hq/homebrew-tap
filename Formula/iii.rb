class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.21.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.8/iii-aarch64-apple-darwin.tar.gz"
      sha256 "46bcdad5c418a19a5981acf047ce55f2849bf1871286fbd90011785098ceb99f"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.8/iii-x86_64-apple-darwin.tar.gz"
      sha256 "a75b21ee0f2d2199da9e3ac5f5957f12cef387e92856f8e3a83fadc4b7ddb304"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
