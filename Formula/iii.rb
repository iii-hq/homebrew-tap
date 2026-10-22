class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.25.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.25.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "5f23087a41ce1cf86f9859d2f430d1809a1e048094e69b1df0cdf1ebefc2a985"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.25.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "e2ac4ef109ddbf459b4683171c6b5b9c8366b16dac2e1f8c4fe08b4a4e19d49a"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
