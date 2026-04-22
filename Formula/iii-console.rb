class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.11.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.3/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "a94ecc8b041c753d8fb97d7f0cc8892316b87ff702e4feb4714dcf5e121063e9"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.3/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "6b83b6d9d388e19283635c767605285c3411a908e0b64f44e773861a3e672228"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.3/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01b1b82e5c9909a3bc72aaa5a38c8b433e8eda72c99d5fdea31c6fea39372148"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.11.3/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8b7724bfe499f844e61cb2609f78f6e3ee6ae6a744b8f8812de643f5b08e920e"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
