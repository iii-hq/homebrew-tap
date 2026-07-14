class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.21.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.6/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "646d379b876fafc11a1b57fa1ba10d5e518162d988406d08f6b4626e7890f1b4"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.6/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "29e62822434c200feadc22028698084ab00ba9986193e237b0c817f2e5c11f52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.6/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00cb03a177a823c6320f8711932c3ae9da27e1f5f3e4a7dbf3f6955fe5786882"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.6/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "81c1a9a7f09d4dcc4ec9a9e3ce6a2e18b8af744a06aad39f0ff7bc7471f0f783"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
