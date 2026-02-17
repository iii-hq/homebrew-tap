class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/console"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/console/releases/download/v0.2.2/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "18bda7d4d76cb246299254ed545a4fa1d2213129c0077a4240187193e8b60b00"
    else
      url "https://github.com/iii-hq/console/releases/download/v0.2.2/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "9d80260b94f15fc9f1573007bd4a7cc352be16f926cb18351ea025a1c7d1dcdc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/console/releases/download/v0.2.2/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a18da9793f332c7ac9940a3f98d687f9b19c67649f09f106a3a24284e786a51"
    else
      url "https://github.com/iii-hq/console/releases/download/v0.2.2/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "503a2e27e404aa9cc53f75a87a7f2aec780f484335bd6c6566e178332d9ebe53"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    system "\#{bin}/iii-console", "--version"
  end
end
