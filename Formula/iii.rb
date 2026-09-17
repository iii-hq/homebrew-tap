class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.24.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "c42a8bc116ae6872dbf4622b2ee4491032a06cd2b75312afb82a8f6c647a0a12"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "a43e2b54dfcba96502eb6f6980f248c7aa160055ddc74f025b56410bf007c326"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
