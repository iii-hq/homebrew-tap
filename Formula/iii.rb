class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.24.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.3/iii-aarch64-apple-darwin.tar.gz"
      sha256 "ae0f5ba73010ac3aa354bfd7ab5d90b9db655e1a538697fda927e53c72a67ffb"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.3/iii-x86_64-apple-darwin.tar.gz"
      sha256 "02927187ff6f1d8e6ca1484f68e469eb6e77422f4c8ba4c4e385e6f295f4eba4"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
