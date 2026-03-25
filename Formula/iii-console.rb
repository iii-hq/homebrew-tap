class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.10.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.10.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "00a5e9d813c3d8dfdd298bdbd982571d82fe7f0ce0d681a00b724d8f4d05a9ef"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.10.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "767a99b89deb5c583fe87fbccb557372a2eb13d4638aa6438924e7eddda17d6f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.10.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d4042dd8afe69b9e69e9079d78ad5e2330d3513ccdbd3ad238102fffa129dce4"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.10.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9b989077ae4ce25edff28a670c153080484cbf6a6935a8eba116fd0a6476746f"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
