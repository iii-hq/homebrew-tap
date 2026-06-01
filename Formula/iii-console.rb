class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.17.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.17.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "c7aa87afd20eab4b8b4f2d00fd7f5935aea748fbb9f607028cf6bcfb8c1c16a5"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.17.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "b1db49f8b5215585e362d160ee9772b5e27ca3abcc24cbc14c6ed268bf3dd859"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.17.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1efa25dd56b8543f509e3ab07d1c83c374003052b264dea23211b51e03702c6"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.17.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7a1f869a0813253c4d20aba07291b8557edea597edb79365233963c21ce8ec21"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
