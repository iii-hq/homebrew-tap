class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.21.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.5/iii-aarch64-apple-darwin.tar.gz"
      sha256 "56271f4ae6d13fcd889370fe081f5efb83911384c692b7135f089426df0d51b9"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.5/iii-x86_64-apple-darwin.tar.gz"
      sha256 "b4ed67462cb5c600b668f2ceff393867c116f683f089b9baff6b543f5ac6fd87"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
