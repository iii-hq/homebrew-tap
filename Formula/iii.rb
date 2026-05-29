class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.16.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.16.1/iii-aarch64-apple-darwin.tar.gz"
      sha256 "11da9ab8fcbce8c2fa7017449ebb8c1c87e1bda36127d50a2ec8ec61bde0cf6c"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.16.1/iii-x86_64-apple-darwin.tar.gz"
      sha256 "1f2eaf1b30ace691c1299f269aca608e33de0c1555f1ea797ffbf326218eadc9"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
