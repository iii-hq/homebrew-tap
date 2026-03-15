class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.9.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "3a12e611ed20b48714bc7b94aadd55c5d44bc2d69b7505cff6f87f5b1558015c"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.9.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "1b9e7a600f9a0f62557132ffad453aa1badc0c6d5c0ac9073ac8b38b7c520b75"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
