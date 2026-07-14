class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.21.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.5/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "bbebc2567187233897f220ef756ac50142c079d047c6f19b0b488ac664aef885"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.5/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "f81244bcd18e83f29b083bd59df263867614643b46d2ee24f090b71b3f67c004"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.5/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb9ad592dbf506a72c2ac785513455ca7183ad01b1ca242ec1461b3ad57416b1"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.5/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f2e349d718be9c3e079a7d9a3d2eac5ab6e09d349a256d937c7d45b0a9d268f3"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
