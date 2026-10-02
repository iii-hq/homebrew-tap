class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.24.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.4/iii-aarch64-apple-darwin.tar.gz"
      sha256 "9c5ab4a205fa35a6b91d4b6366670b773e6b9e81136f774e8c1ade9bf4214534"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.4/iii-x86_64-apple-darwin.tar.gz"
      sha256 "3cae929816f8816bf01b063a022cca0524219d35991d9bdb760f71bfd03a2b2b"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
