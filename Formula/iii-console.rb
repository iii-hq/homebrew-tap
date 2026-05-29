class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.16.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.16.1/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "967ee929c737e335a6a00e7dbe359d4518af886f97ee43fe8f9d755f3b437a91"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.16.1/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "21c3f077e92ec68880091e9a6b6aa8d7721b2b424df32d73500246210897509e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.16.1/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f8453aa112299232a3284cadd142b548249678f42ac7f8ac1a04862244f127e9"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.16.1/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "49ebe26097174cda4ad6aa9627a60628973f4a4612ee5802b777b1c85fed17fe"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
