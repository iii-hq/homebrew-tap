class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.21.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.3/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "dc511bb5af7b88733e96a50f08909e50f024310995413f910ddec97098220c51"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.3/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "be558c25f4e07487bb358aef2d5aee69a5d4b8ffc992966e5ab3de4d82964342"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.3/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "284b92ddc5b116d41440e57f46c028fc64ab47680b357cd88dce54acb560745a"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.21.3/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8275ff62fc0f015d57216302b07146f08348d0d17d5d91ee0753d8a4d2c2b4e0"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
