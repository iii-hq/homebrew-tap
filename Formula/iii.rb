class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.24.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.5/iii-aarch64-apple-darwin.tar.gz"
      sha256 "7e77a982f942c667d989667414ee46c2d372fe62bfc5060ae80c99d05604a1b3"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.5/iii-x86_64-apple-darwin.tar.gz"
      sha256 "4ad2c7d174fa52be5d6f3eed1f5c6678ac46cc14227edd7d61a99fc3c6855862"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
