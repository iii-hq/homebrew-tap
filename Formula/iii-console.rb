class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.22.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.22.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "b35fc24bdd12c9f900979255b794a6a81e26f80d4bf994a6a519203f17a5be22"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.22.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "6c5a53eac92559e50a4c7560b8074578030e863c559d502f46990b814ead1a2e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.22.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a828c3cb3cb17b3394dd7ec50fd43fced0538a03c90d8ee549c5242a648f22fd"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.22.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1852be339511658790031e957ac23343314f0e729daee481ad5bc322e396bc0"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
