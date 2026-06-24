class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.20.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.20.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "57ca47665810eeb1c902b85b29976bf6fa4a4daaffe56cccc40f54beac05bf53"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.20.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "a15cfaa6b11b9f97a28a1b47509214203f869d3f3bc340dc3c2676e82254be80"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.20.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d0441ae66165cac043b700d89acf9fc75634d8b0089357d07c4fe0215d26658c"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.20.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aeae6cfb196905dbb6f8f9e98e31a1b4652f36e4e25b6b86496992a233b90b1a"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
