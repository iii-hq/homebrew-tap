class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.19.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.2/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "76980e8d9dbcc07e67e20b3ffd3187f892382256c5b09a31f86aec1bd5104817"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.2/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "47bb49dfb905f414df1538563ebbfa481e53170de114c706920de89e61d22121"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.2/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bde45b5b64f49ae1dfad647a69381f5bdf69e199de76f2baddab9d684d1396d8"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.2/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "686bc012429e98bb67c728ed5d373a73e13832bccd79e13acb2c0da0fe8000e1"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
