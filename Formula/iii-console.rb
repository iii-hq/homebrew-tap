class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.8.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.8.3/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "b8bb3789d787ab9ec90f64ea4421d91eeba7b876a0e9569f96d8679035fe524e"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.8.3/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "56388f7156369ba4f7a08dc5a2ecfdc7a2083c8fda3fafa6c287f82e76a32a1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.8.3/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "171913dcc8917ec0cb06e5187216fe00c1efca2220a29f2245f24d615dd8305f"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.8.3/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dbdd31834a2c675147a8c1e374dce3dba9e8324ad0f56f78d0f07bdd3f3b2441"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
