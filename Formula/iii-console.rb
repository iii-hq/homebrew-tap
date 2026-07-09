class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.21.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.4/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "7948fc5210fdde868ee628cbec3c70811c813c43bda57f2d2c7e2ef8cf55db61"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.4/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "b19c547d68b16788099c109ed7b64100d4bcb3ace9ca255ce283a262bf700465"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.4/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9a181038a6e4bc875e5bc96192d3487109f524d41ad816c49d6337a648f3a375"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.4/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dc844f5973f986cde760fba1c4c541dfd54b3c7373b1fa42746562ebb30232ed"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
