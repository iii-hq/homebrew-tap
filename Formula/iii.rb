class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.24.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.2/iii-aarch64-apple-darwin.tar.gz"
      sha256 "24d75bfec7eb201b4a57bac1f924b8413d524de7137bba2392434e6598c3f5a2"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.2/iii-x86_64-apple-darwin.tar.gz"
      sha256 "49def608f19e340bc2ee9fd2a78fd47cb7dc37758fc99163bfcb8b41a1d8952b"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
