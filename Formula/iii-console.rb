class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/console"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/console/releases/download/v0.2.1/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "af137309b7f0c1cbce3886e15ab8e42a3fb7619c88e25390e0cae49f095cb18a"
    else
      url "https://github.com/iii-hq/console/releases/download/v0.2.1/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "6c4f825aef2f0635704085fb51a9af7c3c11a91d5a30343050a8982ad9eb415e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/console/releases/download/v0.2.1/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a39f76d70fc0d0bc34e0d634f7670a51795923e70f1dee256d7b8be606a5d53"
    else
      url "https://github.com/iii-hq/console/releases/download/v0.2.1/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "94ee3985799fa5aec14674626ef125d4030a94f99ea73d1cb5c062949b1dc175"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    system "\#{bin}/iii-console", "--version"
  end
end
