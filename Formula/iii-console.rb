class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.18.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.18.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "9ddf09adb14146d3bdc10266b35823baede623afbe01dec5349128ac362b700c"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.18.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "d184062d307c5a43afe5e1754ae4d0e2007ca29a6d0d58da70a2e1e9b108b56f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.18.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "62017fc24e47ecd0acac6d5bc5cc1bdca679ab501647454c5246922d42eff98c"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.18.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b87d3ff1f4f444385c8c926d4a045dcc464bdbc654159ccd4df147d985f46543"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
