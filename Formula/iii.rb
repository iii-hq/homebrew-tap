class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.16.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.16.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "81dc08f68414a3dc481e5b81961c55e36588bddf8becbc9bfd511a987f9a6b9c"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.16.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "38d3e7607a087775c6eb09bd2d441849c762f231bb4a9b17098e802cdddb4422"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
