class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/console"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/console/releases/download/v0.2.4/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "821c86af874e53d4a5f639f29241c8e9ce14a7d4f44fe7edbea40afa19ad3662"
    else
      url "https://github.com/iii-hq/console/releases/download/v0.2.4/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "84c5f6b07b6880bdda51580915dc2dd7f8462e8fa17f4d65fc43a3104f2b6b35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/console/releases/download/v0.2.4/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d7e6085aca8cf7dd16982c3789b167cd01ab60064b4828da325067a1c7a8f5f7"
    else
      url "https://github.com/iii-hq/console/releases/download/v0.2.4/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ddfc42195dfac61d1bd1d3b2738e656d3e1216c9c52d179f50d848dd04e4fba1"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    system "\#{bin}/iii-console", "--version"
  end
end
