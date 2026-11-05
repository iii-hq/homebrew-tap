class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.25.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.25.1/iii-aarch64-apple-darwin.tar.gz"
      sha256 "f7eff803540436a4964958048abc0083e638f53b500d737819f62913c270f141"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.25.1/iii-x86_64-apple-darwin.tar.gz"
      sha256 "d93511a72336c19a6028a18f43819e6b3c49522589fc6303f0a0880b3f02d8ae"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
