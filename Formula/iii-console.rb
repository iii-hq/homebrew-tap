class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.19.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.3/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "8615b5f22c89232a110fd79ac8c490dfcdefc54b94e0a02b31ba5fa3c5ea135a"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.3/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "36927f712e2019272dcccf7885a21600e1fa5a5ce075ee231f22047e93bb1df6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.3/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edd9b2ec9871fa0fff597628b85b82e6324e2ff989a1e1cdb78373f473028aaa"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.19.3/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d987fd410ad3936f688a30e2eb4e0ed520965f71ea535ea261fb33267c52f3c"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
