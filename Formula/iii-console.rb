class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/console"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/console/releases/download/v0.1.6/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "c4b8e706a90c1f912145520e841d3d56e51d0ee9ad928b3a2b72e95e70cd2228"
    else
      url "https://github.com/iii-hq/console/releases/download/v0.1.6/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "bb14ec37e76963207ee50384739f0ae8455568d7b3259297a7b54d44a12ebfce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/console/releases/download/v0.1.6/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03a3d1fbb30a6f358cd499170bc92d7fe662916b54accf7347142af9a5726bec"
    else
      url "https://github.com/iii-hq/console/releases/download/v0.1.6/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e846ab14bda9d06f92f135ca19a6634269cb2ace082458617f640c5dac2d72cc"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    system "#{bin}/iii-console", "--version"
  end
end
