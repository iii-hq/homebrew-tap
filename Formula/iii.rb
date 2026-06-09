class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.19.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.2/iii-aarch64-apple-darwin.tar.gz"
      sha256 "858ee22036723e01db03e43213bdb487f849fee25c0f7a226b876d9ed6c05610"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.2/iii-x86_64-apple-darwin.tar.gz"
      sha256 "d5d5cb58d3eadc55d9db9d53211d437ed0edc98e3012463aa0a619f2d52d205e"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
