class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.9.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.9.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "9217b699644ac6690c73f7b10c2644cd3365078e1aa921ac59c6be1248edf325"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.9.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "952123dc6ecd352e79b0299168041282dd5951de0f907ef00148b76b6653cc5b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.9.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6ee0ccf462ee19dbfdc66e7c6e6a554f5382102e9c79c0383ad9329f43283cfd"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.9.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb74ec966874aeb658e38f78e66c9b9e1267fde3630aca2ccb8fd4d61b882b3e"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
