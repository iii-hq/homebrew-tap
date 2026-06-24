class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.20.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.20.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "282c38fc952db0db44ac1f00e579a13674cc05ee9453b30fc96cde867d96353f"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.20.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "f0a3b0b0054bef2355eda2dccf2c803a9a917e18e19d12b8f7f5864846cec779"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
