class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.23.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.23.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "9e1d9e0ea7d850a458612d8c213e39918c9a3d5f633839976dd0b96b5e6b7a87"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.23.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "0ac175f3b2752e85f7b23fb5b40dbc90f6351a0e4340d971eda2a93d88709124"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.23.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a840ae04c540729a1e93786d0eeda64a8e41f37814de383eb825e87dcd9daa1"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.23.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "287c9d18122aabf2f0ea7b7ddcc3a940ec32df847c735ef4e86ebe42a138cffd"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
