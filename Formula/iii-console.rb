class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.19.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "6d08c92ddfdfe0347e85c7becd794c35d46063e52c309cdefc8326ac81d82ebb"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "6bc15c55d5ebefb0fd565eaba2567c66a45f55f4b8327084e295b33ed21fddb8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "50861b6d195875b962fbe68a3dd9c98b2c03906215ac1255f3fa298dd86b643d"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae926a8efd9e20d139b3067843f42acb98569aeb81d7271fd5faa60635b96528"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
