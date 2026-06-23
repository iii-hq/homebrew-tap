class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.19.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.6/iii-aarch64-apple-darwin.tar.gz"
      sha256 "272860073e1d16a5b22e244e6b17ae0951987ca6025708edf18b7608223eb549"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.6/iii-x86_64-apple-darwin.tar.gz"
      sha256 "3455be5a34fc17a38614234e8ed37aea6e9691684755d00bc1c665bfab49dee6"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
