class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.12.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "a7a3666bdabeaabe8307dc0f518a4fd1b79475200f92bf204d1bb0210026125e"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.12.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "f5f8c4970c990837ac7220c54368466c0664c42cb9f3bcb33d980101c1260bfe"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
