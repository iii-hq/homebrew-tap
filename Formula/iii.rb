class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.24.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.1/iii-aarch64-apple-darwin.tar.gz"
      sha256 "7c36fedccf6b08b6c191d683a5a221d238db6a9034f93c7d6097605d6dddfadf"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.1/iii-x86_64-apple-darwin.tar.gz"
      sha256 "38d286dcad6daba75ae6c90f4c39a59b69227e65800e758668c1d27b3b11a334"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
