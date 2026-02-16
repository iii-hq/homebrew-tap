class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/console"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/console/releases/download/v0.2.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "0267a1997cd22220baed99faf10fc693b1a68297e2d43b516d525ad7b54f14e2"
    else
      url "https://github.com/iii-hq/console/releases/download/v0.2.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "a3dabe88cbec39a5c1ef4d930acc191a97775e7270f06beac0801b82f463ee52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/console/releases/download/v0.2.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fa06b5a82b1d824c84bc928751de3625751e273bd2fed1528f5cdb904e7cbaff"
    else
      url "https://github.com/iii-hq/console/releases/download/v0.2.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d94402ad31fa807f6482d47cc2581ad431f5a1f1267747f707e003f0d36cc24"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    system "\#{bin}/iii-console", "--version"
  end
end
