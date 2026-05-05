class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.11.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.6/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "a49207e43ee19f3c6bbf1f9e44e10715942ec43483219524ac3fa458c0a9cd22"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.6/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "916236ed57197e3e6ab202b05923b7049f003bf25c18ba9de1564e7a2c4e8e06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.6/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7cab47389bb63edb8e1375d8bba120f17285bd9d12fc3eacbc7f4bad96274558"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.6/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "18e218122a5463bd8de3d8ad25b0e1c829bd9c006e9dd3440009fb967e394e93"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
