class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.19.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.6/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "e4047a4d52ece39879d69ffa074fc57301f698c80806d1fa5a6aeca7e66df532"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.6/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "7490882c284c87b20637355898b72b2d4e0387166a2d3f1e6455caf7b783ebdc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.6/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f48ecea85c9639266a77cca6886daa52e956e5611d8c8aaa8c3d31306b8bca5b"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.6/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7804a57a17a66f2ebc4682297a07504927c35dda7dfa3255bd2286b0ce153da"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
