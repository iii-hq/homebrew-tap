class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.24.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.5/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "1af77ceb599c295a50bd22eddbd15347e5c61fba2d660657a8b1b411565bffbb"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.5/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "1b425ec11792950539df05c2fb0524aa23009e7a378fbffaceadc4281ff0122c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.5/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7dbcc9d7f4f35b8e6ac235e0f46ab20fb13220fe6c2292842476bd4793a6c92d"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.5/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5cec46b8599a2c2fdb8a5333458fece4e89680d2cecc4d732c82f705d4abd18e"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
