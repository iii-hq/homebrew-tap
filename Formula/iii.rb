class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "8831aacb9b45d0e36cefb899e353ff2366edd8a82a4854f163dc494f365d45c1"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "4b5a58c2a9cf199a51be2b4e96ef0f07fb15f2b58f038a8e89353922f2d46d3a"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
