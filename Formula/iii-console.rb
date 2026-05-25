class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.13.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.13.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "28b0b18a11f4d4bd2f89c51a105802f90161f4a497d98930482bacc739772681"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.13.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "aad39814031078f634246416ec1f6838bf259b54ea93dee09a1281deb60952c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.13.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "320bf19cbcbe254cb2d13d6383ae1e3df4f7e29b1ea326b15b721c12da30e0d9"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.13.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6a863100f22a0f270f3ce27ed9ccee472d946f443c81b9ed81e24dd076939838"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
