class Iii < Formula
  desc "WebSocket-based process communication engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.23.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.23.0/iii-aarch64-apple-darwin.tar.gz"
      sha256 "568f49b781dfe87781fa65d71def741ec0e7225011b941e5fe7f8196afebee50"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.23.0/iii-x86_64-apple-darwin.tar.gz"
      sha256 "cb1fcea4138185855321cb222ac7b3d4e887826bc86d58fc245e85ba7ebc74b0"
    end
  end

  def install
    bin.install "iii"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii --version")
  end
end
