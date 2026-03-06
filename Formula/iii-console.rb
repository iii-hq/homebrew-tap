class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.8.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.8.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "ba3a5f5cfa560dceb4c4c2f85b08d74a80df91621c2ea4efbe3beca6e72e17fd"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.8.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "edf1f75fb8d7552bdd4f8f864d9c0e87fd8ca25ffc1c74b96e65a662c224dfdb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.8.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "298117aff81a54d5a51d4571edb559e4e3b69570061c4bd84ca30fd310fce5e6"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.8.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a8adbf2b8825bee3391f1c27ebd3939507946427fbb0cbee8afbe975d82fedd3"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
