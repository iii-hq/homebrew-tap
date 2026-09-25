class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.24.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.3/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "9b35e4a5e56c2c648ce1135ac7bfdd32e456a5c01e75a7bb68b58e430da0ea6a"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.3/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "7cbc0dfdb784a16f662d59658161b578ed86142debce0a21cfbab34dcae1e9b5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.3/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ec8c5339be834a02a3f7878b8fa44c47e8c2bd80f74773a98d3f49cea3f3f6d5"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.3/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed10ad09495b5590d3ef38ce76333536a46960f171f4eb8b13bb2506945253a0"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
