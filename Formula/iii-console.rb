class IiiConsole < Formula
  desc "Developer console for the iii engine"
  homepage "https://github.com/iii-hq/iii"
  version "0.24.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.4/iii-console-aarch64-apple-darwin.tar.gz"
      sha256 "a57918ae643b620f3cd80ff64127b1953d503e9c89e3c309a1ea3a833a199c40"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.4/iii-console-x86_64-apple-darwin.tar.gz"
      sha256 "c86c656259483e8ec05217a41b491e4b68c37102283d1517f3aa59f11484562c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.4/iii-console-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8280ab101ab80569ec28a89b4c0b046db63982c2536fa79de07e3884dc2c0cc3"
    else
      url "https://github.com/iii-hq/iii/releases/download/iii/v0.24.4/iii-console-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "365561b77f8ba37cc4bbe0f46e258b6445b938d0bb71bcb64cd6f19daaed47b9"
    end
  end

  def install
    bin.install "iii-console"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/iii-console --version")
  end
end
