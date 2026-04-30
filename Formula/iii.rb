class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.11.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.4/iii-aarch64-apple-darwin.tar.gz"
      sha256 "9443d1096fc5b97e002c13b5044e809c424739a01586eeda85611711dce1ef9c"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.4/iii-x86_64-apple-darwin.tar.gz"
      sha256 "39645ad1824d018e2c255283b7732e1f739b69957c6a62e339ca00b56222189e"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
