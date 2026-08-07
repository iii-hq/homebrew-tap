class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.22.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.22.1/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "c8cc965a537000d86b457e7ca33132765a166fbb5c4ff72c074e59336982117b"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.22.1/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "e17533328faa38c07eabd8739cec6e79f35f3fab07e1d9ba9f8ad7484f8608ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.22.1/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d958c8e03a4fb76d32b341bed2c5f6ea80c5a002b6f4cc4400aabd3c5f9b1b59"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.22.1/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa1a7e70eb7e75a77430426aaee096db3778420ab3486f09239078f5ded50810"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
