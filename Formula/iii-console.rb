class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.24.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.6/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "8c4f88f1ab1a126feef032a24cb01b9d2332f4b488ad752c20af0911b948be4c"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.6/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "8f96d9c8069a44809ccb65d5029b2075c9478a6e6a6ef818f909ca132ca43359"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.6/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00ccaad32dd50d18fe5733675bb8c8ea63e5618c5caaf88dca76d329239c2603"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.6/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "810996c4d728ff8ec5fa1cd56329acfeec6823f060e5258bb7740c93dbadff2b"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
