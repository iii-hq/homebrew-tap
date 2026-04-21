class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.11.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.2/iii-aarch64-apple-darwin.tar.gz"
      sha256 "e7834c44fefb2b5343d327102a941419245f7fff447f95373857a04b033fb1bd"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.2/iii-x86_64-apple-darwin.tar.gz"
      sha256 "2b67e5f18833c415f4cb16a9e13b0e953555e0ca138682bf24894abe8b80b836"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
