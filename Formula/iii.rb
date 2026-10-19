class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.24.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.6/iii-aarch64-apple-darwin.tar.gz"
      sha256 "1d50407ff5f0be161e6fc93b4c8c376bd92489ace7b288a62aeb60466d770e91"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.6/iii-x86_64-apple-darwin.tar.gz"
      sha256 "920d1c2f9f5cfa29586c57596b0acf2fec427427a2855e388279b336be56117c"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
