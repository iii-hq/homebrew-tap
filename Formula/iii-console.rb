class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.19.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.4/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "40679245c529c5ab3b1039b81d6beccbc9442113ab64df2f8d241d4fdfbb5411"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.4/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "c0cb42da4e120aae99a56a23a9819034d5796b7fc00739f3191c8da1dfaed1d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.4/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "12f90becfa74aa1bf18fdc84f4b4ac4802c184516c1528b311443410b08f369f"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.4/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "57c75895b45dca8ed3d0e1f3d45b19c250545965293bea5366625c2a15331217"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
