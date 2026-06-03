class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.18.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.18.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "808667d2ba3f3a62985069ad5ec7f8232869392f137e01f2adab7847ee085394"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.18.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "7921a4216be18a1544099a13b5df357f72e8df6b06564d9caa175ec6f0fbe974"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
