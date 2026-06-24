class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.19.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.7/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "af950d99299c82495b8a49e533a1c8ad7b6cb292ebd7abf664bc7af8fa95231e"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.7/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "bdd15bc071a321979c6420027765971ed3993b96f411eabc4da24a009dd0314e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.7/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e43b640d93c23c9f120bfd7650ba42dd529fc99352d199310b51db43a3b660f"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.7/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23aa60ca7ac63323392de0dee02c84f5bb978794f7221e0579fb73fada91f31c"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
