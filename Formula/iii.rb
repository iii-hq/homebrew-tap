class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.11.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.6/iii-aarch64-apple-darwin.tar.gz"
      sha256 "8c1c2955d525a07bca877848b1735b1f3767a22ddae7ca22c2e8c83f2b1fcf37"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.6/iii-x86_64-apple-darwin.tar.gz"
      sha256 "405229f2269e7b7984f349a8884685fe834dee87e8f128d2560205d1155508db"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
