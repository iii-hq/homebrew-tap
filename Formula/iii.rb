class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.8.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.8.3/iii-aarch64-apple-darwin.tar.gz"
      sha256 "3d73cbf49e4a79cd05f1d12d60a675e67d837bcf48d7dbf68c130c2240a84519"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.8.3/iii-x86_64-apple-darwin.tar.gz"
      sha256 "6a1556f5452c38d472640dd4c03daaa706d3dd13e2708cc1e03c1073226b70d6"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iii --version")
  end
end
