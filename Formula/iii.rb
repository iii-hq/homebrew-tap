class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.22.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.22.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "541a30bd0f5a40d0b1c412adb0f00c9e52d11d41ec35df125ae46581675a9f7f"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.22.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "1c81fa082a26e284c058e36732c3444ef64bdff5dd6688fee9a50dc6e6453076"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
