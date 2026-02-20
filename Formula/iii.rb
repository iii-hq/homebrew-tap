class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/v0.6.1/iii-aarch64-apple-darwin.tar.gz"
      sha256 "c50bf01cec69d5094f7a8a38e434e776b060fd81dc1d8a3ae388eb77a22effb4"
    else
      url "https://github.com/iii-hq/iii/releases/download/v0.6.1/iii-x86_64-apple-darwin.tar.gz"
      sha256 "53c6446d5c1cbcb809514d73d6541a208b59a9084ecda17a93a50ceb3cd74e2c"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iii --version")
  end
end
