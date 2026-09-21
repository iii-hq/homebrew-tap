class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.24.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.1/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "5209b766e6fdb83368f01da2223d319fc330b3b333cf3c37bf05a1fe503a5836"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.1/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "ae8b698845399f9f0f7da71a5d30fce952f245013f7d27797a2b23ca8bfbe869"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.1/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "15befd235e010aeeff7b64a095f593274a1727b8f5c56b195a4201a3fe8fdd55"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.1/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d72ce4b14925c183e81b13a623bf988c5f2541cd17342c46af18dab98c0ad486"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
