class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.26.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.26.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "2730296a08ae5843757b2e7913ad65b6282901c98b951dbc23018e0eb425e285"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.26.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "5f98e6679e8489947c1383377fda8a620c2e014f68005018886d673efaf85967"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
