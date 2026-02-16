class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/console"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/console/releases/download/v0.1.8/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "07606a5f487a5c20ea9a694aeeddb3aad3651ca63fc2e044294c05a7f0cfcad0"
    else
      url "https://github.com/iii-hq/console/releases/download/v0.1.8/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "17dde94452c7ed1e293506dff0443788ed49719881add900d2af29225cd4cb3f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/console/releases/download/v0.1.8/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eeb5927af64668fd77ec9c8e8b2a00b2ffaed488ce7781943b3278f0592e67b2"
    else
      url "https://github.com/iii-hq/console/releases/download/v0.1.8/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5971355b67556ab3b8255fa55c39b6f30add748abf25584c846b35e819593cce"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    system "\#{bin}/iii-console", "--version"
  end
end
