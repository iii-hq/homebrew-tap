class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.16.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.16.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "0bcbb83e1612270d666fc9d7f09d72a1d1b8f4751328d73bf5c4d5b2a45175b7"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.16.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "0ec50872c11683d4bba915d531d714a1560417254eaf1475630139ac16394588"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.16.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c97181850a269f3dd851cd490a002ec508d070191bf619b4cdbdf123422c9a7d"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.16.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2912998cc36ec2cf82b3d0a1c9ce9e67b50f31964a5066a74816e47e6f882d9b"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
