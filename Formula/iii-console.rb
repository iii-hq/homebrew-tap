class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.12.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.12.0/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "0de7c437f5e916b8e2afda9362ab7a97f420f0bdf42fb901d4628d6023ab8d5e"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.12.0/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "e26afdf6164a54c9671e2c03affbbfec4719e8edc9eba03e4cde92a3592cd54f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.12.0/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3c75c9394c4645754aa431219c6d7460d928565c4997bf2fd983bb21bd833ad"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.12.0/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad085c939668f48e60891f7c8b1b97bf55750dd1abf22ffa11c0ea3b2849e053"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
