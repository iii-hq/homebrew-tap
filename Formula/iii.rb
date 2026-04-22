class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.11.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.3/iii-aarch64-apple-darwin.tar.gz"
      sha256 "540fe4bc271f67ddf64001250fdd118c0473fd5d66ce5dbac3d46aa81212854b"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.3/iii-x86_64-apple-darwin.tar.gz"
      sha256 "e0410df82c53a7e1d6cac627ed5a8a96c7061282a7b9038a85ee73423feb316c"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
