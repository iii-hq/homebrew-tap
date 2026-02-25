class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/v0.6.3/iii-aarch64-apple-darwin.tar.gz"
      sha256 "1484cc05aaec21f6e30f3a405c815c2946cee898ea21bf515145dd5a43120d7c"
    else
      url "https://github.com/iii-hq/iii/releases/download/v0.6.3/iii-x86_64-apple-darwin.tar.gz"
      sha256 "f6e5d55563e2482923fe0a0fb83d03d7b66b7b966bbb692666a83075f63be752"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iii --version")
  end
end
